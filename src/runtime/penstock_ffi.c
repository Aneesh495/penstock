#include "penstock.h"
#include "penstock_runtime.h"
#include <stdlib.h>
#include <string.h>

penstock_network_t* penstock_network_create(void) {
    penstock_network_t* net = (penstock_network_t*)calloc(1, sizeof(penstock_network_t));
    if (!net) return NULL;
    net->node_capacity = 32;
    net->nodes = (penstock_node_t*)malloc(sizeof(penstock_node_t) * net->node_capacity);
    net->link_capacity = 32;
    net->links = (penstock_link_t*)malloc(sizeof(penstock_link_t) * net->link_capacity);
    
    net->steady_opts.headloss_formula = PENSTOCK_HEADLOSS_DARCY_WEISBACH;
    net->steady_opts.flow_tolerance = 1e-4;
    net->steady_opts.head_tolerance = 1e-3;
    net->steady_opts.max_iterations = 100;
    net->steady_opts.relaxation_factor = 1.0;
    net->steady_opts.specific_gravity = 1.0;
    net->steady_opts.kinematic_viscosity = 1.004e-6;
    net->steady_opts.bulk_modulus = 2.19e9;

    net->transient_opts.total_duration = 10.0;
    net->transient_opts.time_step = 0.01;
    net->transient_opts.wave_speed_default = 1200.0;
    net->transient_opts.enable_cavitation = true;
    net->transient_opts.vapor_pressure_head = -10.0;
    net->transient_opts.courant_number = 1.0;
    return net;
}

void penstock_network_free(penstock_network_t* net) {
    if (!net) return;
    free(net->nodes);
    free(net->links);
    free(net);
}

int penstock_network_add_node(penstock_network_t* net, const penstock_node_t* node) {
    if (!net || !node) return -1;
    if (net->node_count >= net->node_capacity) {
        net->node_capacity *= 2;
        net->nodes = (penstock_node_t*)realloc(net->nodes, sizeof(penstock_node_t) * net->node_capacity);
    }
    net->nodes[net->node_count] = *node;
    return (int)(net->node_count++);
}

int penstock_network_add_link(penstock_network_t* net, const penstock_link_t* link) {
    if (!net || !link) return -1;
    if (net->link_count >= net->link_capacity) {
        net->link_capacity *= 2;
        net->links = (penstock_link_t*)realloc(net->links, sizeof(penstock_link_t) * net->link_capacity);
    }
    net->links[net->link_count] = *link;
    return (int)(net->link_count++);
}

int penstock_network_find_node(const penstock_network_t* net, const char* id) {
    if (!net || !id) return -1;
    for (size_t i = 0; i < net->node_count; i++) {
        if (strcmp(net->nodes[i].id, id) == 0) return (int)i;
    }
    return -1;
}

int penstock_network_find_link(const penstock_network_t* net, const char* id) {
    if (!net || !id) return -1;
    for (size_t i = 0; i < net->link_count; i++) {
        if (strcmp(net->links[i].id, id) == 0) return (int)i;
    }
    return -1;
}
