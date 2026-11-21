#define _POSIX_C_SOURCE 200809L

#include "penstock_runtime.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

dylan_vm_t* dylan_vm_create(void) {
    dylan_vm_t* vm = (dylan_vm_t*)calloc(1, sizeof(dylan_vm_t));
    if (!vm) return NULL;
    vm->stack_capacity = 1024;
    vm->stack = (dylan_obj_t**)malloc(sizeof(dylan_obj_t*) * vm->stack_capacity);
    vm->stack_size = 0;
    
    vm->symbol_capacity = 256;
    vm->symbols = (char**)malloc(sizeof(char*) * vm->symbol_capacity);
    vm->symbol_count = 0;

    vm->condition_depth = 0;
    vm->condition_stack = (dylan_obj_t**)malloc(sizeof(dylan_obj_t*) * 64);
    return vm;
}

void dylan_vm_free(dylan_vm_t* vm) {
    if (!vm) return;
    for (size_t i = 0; i < vm->symbol_count; i++) {
        free(vm->symbols[i]);
    }
    free(vm->symbols);
    free(vm->stack);
    free(vm->condition_stack);
    free(vm);
}

dylan_obj_t* dylan_make_int(int64_t val) {
    dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    if (!obj) return NULL;
    obj->tag = DYLAN_TAG_INT;
    obj->flags = 0;
    obj->u.ival = val;
    return obj;
}

dylan_obj_t* dylan_make_float(double val) {
    dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    if (!obj) return NULL;
    obj->tag = DYLAN_TAG_FLOAT;
    obj->flags = 0;
    obj->u.fval = val;
    return obj;
}

dylan_obj_t* dylan_make_string(const char* s) {
    dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    if (!obj) return NULL;
    obj->tag = DYLAN_TAG_STRING;
    obj->flags = 0;
    obj->u.strval = strdup(s ? s : "");
    return obj;
}

dylan_obj_t* dylan_make_symbol(dylan_vm_t* vm, const char* name) {
    if (!vm || !name) return NULL;
    for (size_t i = 0; i < vm->symbol_count; i++) {
        if (strcmp(vm->symbols[i], name) == 0) {
            dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
            obj->tag = DYLAN_TAG_SYMBOL;
            obj->flags = 0;
            obj->u.strval = vm->symbols[i];
            return obj;
        }
    }
    if (vm->symbol_count >= vm->symbol_capacity) {
        vm->symbol_capacity *= 2;
        vm->symbols = (char**)realloc(vm->symbols, sizeof(char*) * vm->symbol_capacity);
    }
    char* copy = strdup(name);
    vm->symbols[vm->symbol_count++] = copy;
    
    dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    obj->tag = DYLAN_TAG_SYMBOL;
    obj->flags = 0;
    obj->u.strval = copy;
    return obj;
}

dylan_obj_t* dylan_make_vector(size_t capacity) {
    dylan_obj_t* obj = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    if (!obj) return NULL;
    obj->tag = DYLAN_TAG_VECTOR;
    obj->flags = 0;
    obj->u.vector.length = 0;
    obj->u.vector.capacity = capacity > 0 ? capacity : 8;
    obj->u.vector.items = (dylan_obj_t**)malloc(sizeof(dylan_obj_t*) * obj->u.vector.capacity);
    return obj;
}

void dylan_vector_push(dylan_obj_t* vec, dylan_obj_t* item) {
    if (!vec || vec->tag != DYLAN_TAG_VECTOR || !item) return;
    if (vec->u.vector.length >= vec->u.vector.capacity) {
        vec->u.vector.capacity *= 2;
        vec->u.vector.items = (dylan_obj_t**)realloc(vec->u.vector.items,
                                                      sizeof(dylan_obj_t*) * vec->u.vector.capacity);
    }
    vec->u.vector.items[vec->u.vector.length++] = item;
}
