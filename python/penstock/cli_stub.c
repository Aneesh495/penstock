#include "penstock.h"
#include "penstock_runtime.h"
#include <stdio.h>

int main(int argc, char** argv) {
    printf("Penstock Hydraulic Transient & Network Simulator v%d.%d.%d\n",
           PENSTOCK_VERSION_MAJOR, PENSTOCK_VERSION_MINOR, PENSTOCK_VERSION_PATCH);
    if (argc > 1) {
        printf("Executing command: %s\n", argv[1]);
    } else {
        printf("Usage: penstock [solve|transient|dma|verify] [options]\n");
    }
    return 0;
}
