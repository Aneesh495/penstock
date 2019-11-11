#ifndef PENSTOCK_RUNTIME_H
#define PENSTOCK_RUNTIME_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dylan Runtime Object Tagging */
typedef enum {
    DYLAN_TAG_INT = 1,
    DYLAN_TAG_FLOAT = 2,
    DYLAN_TAG_SYMBOL = 3,
    DYLAN_TAG_STRING = 4,
    DYLAN_TAG_LIST = 5,
    DYLAN_TAG_VECTOR = 6,
    DYLAN_TAG_CLASS = 7,
    DYLAN_TAG_INSTANCE = 8,
    DYLAN_TAG_GENERIC = 9,
    DYLAN_TAG_METHOD = 10,
    DYLAN_TAG_CONDITION = 11
} dylan_tag_t;

typedef struct dylan_obj dylan_obj_t;

struct dylan_obj {
    dylan_tag_t tag;
    uint32_t flags;
    union {
        int64_t ival;
        double fval;
        char* strval;
        struct {
            dylan_obj_t* head;
            dylan_obj_t* tail;
        } pair;
        struct {
            dylan_obj_t** items;
            size_t length;
            size_t capacity;
        } vector;
        struct {
            char* name;
            dylan_obj_t** superclasses;
            size_t super_count;
            char** slot_names;
            size_t slot_count;
        } cls;
        struct {
            dylan_obj_t* cls;
            dylan_obj_t** slots;
            size_t slot_count;
        } inst;
        struct {
            char* name;
            dylan_obj_t** methods;
            size_t method_count;
            size_t arity;
        } generic;
        struct {
            dylan_obj_t** specializers;
            size_t arity;
            void* fn_ptr;
        } method;
    } u;
};

/* Dylan VM State */
typedef struct {
    dylan_obj_t** stack;
    size_t stack_size;
    size_t stack_capacity;
    
    /* Symbol table */
    char** symbols;
    size_t symbol_count;
    size_t symbol_capacity;

    /* Condition handlers */
    dylan_obj_t** condition_stack;
    size_t condition_depth;
} dylan_vm_t;

dylan_vm_t* dylan_vm_create(void);
void dylan_vm_free(dylan_vm_t* vm);

dylan_obj_t* dylan_make_int(int64_t val);
dylan_obj_t* dylan_make_float(double val);
dylan_obj_t* dylan_make_string(const char* s);
dylan_obj_t* dylan_make_symbol(dylan_vm_t* vm, const char* name);
dylan_obj_t* dylan_make_vector(size_t capacity);
void dylan_vector_push(dylan_obj_t* vec, dylan_obj_t* item);

dylan_obj_t* dylan_define_class(dylan_vm_t* vm, const char* name, dylan_obj_t* super, const char** slots, size_t slot_count);
dylan_obj_t* dylan_make_instance(dylan_obj_t* cls);

dylan_obj_t* dylan_define_generic(dylan_vm_t* vm, const char* name, size_t arity);
void dylan_add_method(dylan_obj_t* generic, dylan_obj_t** specializers, size_t arity, void* fn_ptr);
dylan_obj_t* dylan_dispatch(dylan_vm_t* vm, dylan_obj_t* generic, dylan_obj_t** args, size_t arg_count);

int dylan_load_file(dylan_vm_t* vm, const char* filepath);

#ifdef __cplusplus
}
#endif

#endif /* PENSTOCK_RUNTIME_H */
