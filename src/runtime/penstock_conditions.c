#include "penstock_runtime.h"
#include <stdio.h>
#include <stdlib.h>

void dylan_signal_condition(dylan_vm_t* vm, const char* condition_name, const char* message) {
    if (!vm) return;
    if (vm->condition_depth < 64) {
        dylan_obj_t* cond = dylan_make_string(message);
        vm->condition_stack[vm->condition_depth++] = cond;
    }
    fprintf(stderr, "[DYLAN CONDITION] %s: %s\n", condition_name, message);
}
