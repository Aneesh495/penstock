# Penstock: High-Performance Hydraulic Network & Transient Simulator
# Multi-target Makefile for native engine, Dylan runtime, and verification

CC ?= clang
CFLAGS ?= -O3 -Wall -Wextra -pedantic -std=c99 -fPIC -Iinclude
LDFLAGS ?= -shared -lm
AR ?= ar
ARFLAGS ?= rcs

BUILD_DIR = build
BIN_DIR = bin
LIB_DIR = lib

RUNTIME_SRCS = src/runtime/penstock_vm.c \
               src/runtime/penstock_parser.c \
               src/runtime/penstock_clos.c \
               src/runtime/penstock_conditions.c \
               src/runtime/penstock_primitives.c \
               src/runtime/penstock_ffi.c

NATIVE_SRCS = native/sparse_solver.c \
              native/moc_kernel.c \
              native/suter_tables.c

SRCS = $(RUNTIME_SRCS) $(NATIVE_SRCS)
OBJS = $(patsubst %.c,$(BUILD_DIR)/%.o,$(SRCS))

STATIC_LIB = $(LIB_DIR)/libpenstock.a
SHARED_LIB = $(LIB_DIR)/libpenstock.dylib
ifeq ($(shell uname -s),Linux)
    SHARED_LIB = $(LIB_DIR)/libpenstock.so
endif

TEST_RUNNER = $(BIN_DIR)/test_runner
BENCH_SPARSE = $(BIN_DIR)/bench_sparse
BENCH_MOC = $(BIN_DIR)/bench_moc
PENSTOCK_CLI = $(BIN_DIR)/penstock

.PHONY: all clean test demo verify bench count-lines format check-style

all: $(STATIC_LIB) $(SHARED_LIB) $(PENSTOCK_CLI) $(TEST_RUNNER)

$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(STATIC_LIB): $(OBJS)
	@mkdir -p $(LIB_DIR)
	$(AR) $(ARFLAGS) $@ $^

$(SHARED_LIB): $(OBJS)
	@mkdir -p $(LIB_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(PENSTOCK_CLI): $(STATIC_LIB)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ python/penstock/cli_stub.c $(STATIC_LIB) -lm

$(TEST_RUNNER): tests/test_runner.c $(STATIC_LIB)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -Iinclude -o $@ tests/test_runner.c $(STATIC_LIB) -lm

$(BENCH_SPARSE): benchmarks/bench_sparse_solve.c $(STATIC_LIB)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -Iinclude -o $@ benchmarks/bench_sparse_solve.c $(STATIC_LIB) -lm

$(BENCH_MOC): benchmarks/bench_moc_grid.c $(STATIC_LIB)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -Iinclude -o $@ benchmarks/bench_moc_grid.c $(STATIC_LIB) -lm

test: $(TEST_RUNNER)
	@echo "Running native C and Dylan verification suite..."
	@$(TEST_RUNNER)
	@echo "Running Python integration tests..."
	@python3 -m unittest discover -s tests/integration -p "test_*.py" -v
	@echo "Running regression tests..."
	@python3 -m unittest discover -s tests/regression -p "test_*.py" -v

demo: all
	@echo "Executing Penstock hydraulic transient and DMA leak demonstration..."
	@python3 python/penstock/cli.py demo --scenario water-hammer
	@python3 python/penstock/cli.py demo --scenario dma-leak

verify: test
	@echo "Running verification checks: zero em dashes and strict syntax standards..."
	@python3 -c "import os, sys; [sys.exit(1) for root, _, files in os.walk('.') for f in files if f.endswith(('.dylan', '.md', '.c', '.h', '.py')) and chr(8212) in open(os.path.join(root, f), errors='ignore').read()]"
	@echo "Verification checks passed cleanly."

bench: $(BENCH_SPARSE) $(BENCH_MOC)
	@echo "Running sparse linear algebra benchmarks..."
	@$(BENCH_SPARSE)
	@echo "Running 1M-cell MOC acoustic grid throughput benchmark..."
	@$(BENCH_MOC)
	@echo "Running network scaling benchmark..."
	@python3 benchmarks/bench_network_scale.py

count-lines:
	@echo "Counting lines of code in Penstock project:"
	@find src tests -name "*.dylan" | xargs wc -l | tail -n 1 | awk '{print "  Dylan LOC:  " $$1}'
	@find src native include -name "*.[ch]" | xargs wc -l | tail -n 1 | awk '{print "  C/Header LOC: " $$1}'
	@find python tests -name "*.py" | xargs wc -l | tail -n 1 | awk '{print "  Python LOC: " $$1}'
	@find docs -name "*.md" | xargs wc -l | tail -n 1 | awk '{print "  Docs LOC:   " $$1}'

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR) $(LIB_DIR) work/ output/
