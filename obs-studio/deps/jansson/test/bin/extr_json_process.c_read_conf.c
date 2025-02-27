
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int have_hashseed; void* hashseed; void* strip; void* precision; void* sort_keys; void* preserve_order; void* ensure_ascii; void* compact; void* indent; } ;
typedef int FILE ;


 void* atoi (char*) ;
 TYPE_1__ conf ;
 int free (char*) ;
 char* loadfile (int *) ;
 int printf (char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void read_conf(FILE *conffile)
{
    char *buffer, *line, *val;

    buffer = loadfile(conffile);
    for (line = strtok(buffer, "\r\n"); line; line = strtok(((void*)0), "\r\n")) {
        if (!strncmp(line, "export ", 7))
            continue;
        val = strchr(line, '=');
        if (!val) {
            printf("invalid configuration line\n");
            break;
        }
        *val++ = '\0';

        if (!strcmp(line, "JSON_INDENT"))
            conf.indent = atoi(val);
        if (!strcmp(line, "JSON_COMPACT"))
            conf.compact = atoi(val);
        if (!strcmp(line, "JSON_ENSURE_ASCII"))
            conf.ensure_ascii = atoi(val);
        if (!strcmp(line, "JSON_PRESERVE_ORDER"))
            conf.preserve_order = atoi(val);
        if (!strcmp(line, "JSON_SORT_KEYS"))
            conf.sort_keys = atoi(val);
        if (!strcmp(line, "JSON_REAL_PRECISION"))
            conf.precision = atoi(val);
        if (!strcmp(line, "STRIP"))
            conf.strip = atoi(val);
        if (!strcmp(line, "HASHSEED")) {
            conf.have_hashseed = 1;
            conf.hashseed = atoi(val);
        } else {
            conf.have_hashseed = 0;
        }
    }

    free(buffer);
}
