
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* path; int full_path; } ;
typedef TYPE_1__ Package ;


 int MAX_PATH ;
 int add_package (TYPE_1__*) ;
 int compile_package (TYPE_1__*) ;
 int copy_package_full_path (char*,char const*) ;
 scalar_t__ flag_verbose ;
 TYPE_1__* map_get (int *,char const*) ;
 int package_map ;
 int printf (char*,char const*) ;
 char* str_intern (char const*) ;
 int strcpy (int ,char*) ;
 TYPE_1__* xcalloc (int,int) ;

Package *import_package(const char *package_path) {
    package_path = str_intern(package_path);
    Package *package = map_get(&package_map, package_path);
    if (!package) {
        package = xcalloc(1, sizeof(Package));
        package->path = package_path;
        if (flag_verbose) {
            printf("Importing %s\n", package_path);
        }
        char full_path[MAX_PATH];
        if (!copy_package_full_path(full_path, package_path)) {
            return ((void*)0);
        }
        strcpy(package->full_path, full_path);
        add_package(package);
        compile_package(package);
    }
    return package;
}
