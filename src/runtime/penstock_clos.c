#include "penstock_runtime.h"
#include <stdlib.h>
#include <string.h>

dylan_obj_t* dylan_define_class(dylan_vm_t* vm, const char* name, dylan_obj_t* super,
                                const char** slots, size_t slot_count) {
    (void)vm;
    dylan_obj_t* cls = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    cls->tag = DYLAN_TAG_CLASS;
    cls->flags = 0;
    cls->u.cls.name = strdup(name ? name : "anonymous");
    cls->u.cls.super_count = super ? 1 : 0;
    cls->u.cls.superclasses = super ? (dylan_obj_t**)malloc(sizeof(dylan_obj_t*)) : NULL;
    if (super) cls->u.cls.superclasses[0] = super;
    
    cls->u.cls.slot_count = slot_count;
    cls->u.cls.slot_names = (char**)malloc(sizeof(char*) * slot_count);
    for (size_t i = 0; i < slot_count; i++) {
        cls->u.cls.slot_names[i] = strdup(slots[i]);
    }
    return cls;
}

dylan_obj_t* dylan_make_instance(dylan_obj_t* cls) {
    if (!cls || cls->tag != DYLAN_TAG_CLASS) return NULL;
    dylan_obj_t* inst = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    inst->tag = DYLAN_TAG_INSTANCE;
    inst->flags = 0;
    inst->u.inst.cls = cls;
    inst->u.inst.slot_count = cls->u.cls.slot_count;
    inst->u.inst.slots = (dylan_obj_t**)calloc(cls->u.cls.slot_count, sizeof(dylan_obj_t*));
    return inst;
}

dylan_obj_t* dylan_define_generic(dylan_vm_t* vm, const char* name, size_t arity) {
    (void)vm;
    dylan_obj_t* gen = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    gen->tag = DYLAN_TAG_GENERIC;
    gen->flags = 0;
    gen->u.generic.name = strdup(name ? name : "generic");
    gen->u.generic.arity = arity;
    gen->u.generic.method_count = 0;
    gen->u.generic.methods = NULL;
    return gen;
}

void dylan_add_method(dylan_obj_t* generic, dylan_obj_t** specializers, size_t arity, void* fn_ptr) {
    if (!generic || generic->tag != DYLAN_TAG_GENERIC) return;
    dylan_obj_t* m = (dylan_obj_t*)malloc(sizeof(dylan_obj_t));
    m->tag = DYLAN_TAG_METHOD;
    m->flags = 0;
    m->u.method.arity = arity;
    m->u.method.fn_ptr = fn_ptr;
    m->u.method.specializers = (dylan_obj_t**)malloc(sizeof(dylan_obj_t*) * arity);
    for (size_t i = 0; i < arity; i++) {
        m->u.method.specializers[i] = specializers[i];
    }
    generic->u.generic.method_count++;
    generic->u.generic.methods = (dylan_obj_t**)realloc(generic->u.generic.methods,
                                                         sizeof(dylan_obj_t*) * generic->u.generic.method_count);
    generic->u.generic.methods[generic->u.generic.method_count - 1] = m;
}

dylan_obj_t* dylan_dispatch(dylan_vm_t* vm, dylan_obj_t* generic, dylan_obj_t** args, size_t arg_count) {
    (void)vm;
    if (!generic || generic->tag != DYLAN_TAG_GENERIC || generic->u.generic.method_count == 0) return NULL;
    for (size_t i = 0; i < generic->u.generic.method_count; i++) {
        dylan_obj_t* m = generic->u.generic.methods[i];
        if (m->u.method.arity == arg_count) {
            typedef dylan_obj_t* (*dylan_fn_t)(dylan_obj_t**);
            dylan_fn_t fn = (dylan_fn_t)m->u.method.fn_ptr;
            if (fn) return fn(args);
        }
    }
    return NULL;
}
