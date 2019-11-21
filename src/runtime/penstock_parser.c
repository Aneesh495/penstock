#include "penstock_runtime.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int dylan_load_file(dylan_vm_t* vm, const char* filepath) {
    if (!vm || !filepath) return -1;
    FILE* fp = fopen(filepath, "r");
    if (!fp) return -1;
    
    char line[512];
    int parsed_definitions = 0;
    while (fgets(line, sizeof(line), fp)) {
        char* p = line;
        while (isspace((unsigned char)*p)) p++;
        if (*p == '/' && *(p+1) == '/') continue;
        if (strncmp(p, "define class", 12) == 0) {
            parsed_definitions++;
        } else if (strncmp(p, "define method", 13) == 0) {
            parsed_definitions++;
        } else if (strncmp(p, "define generic", 14) == 0) {
            parsed_definitions++;
        }
    }
    fclose(fp);
    return parsed_definitions;
}
