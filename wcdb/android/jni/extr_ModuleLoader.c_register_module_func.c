
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; void* func; } ;
typedef TYPE_1__ wcdb_moddef_t ;


 TYPE_1__** g_moddef ;
 size_t* g_moddef_capacity ;
 size_t* g_moddef_num ;
 void* realloc (TYPE_1__*,size_t) ;

void register_module_func(const char *name, void *func, unsigned tag)
{
    if (g_moddef_num[tag] == g_moddef_capacity[tag]) {
        size_t new_size =
            g_moddef_capacity[tag] ? g_moddef_capacity[tag] * 2 : 16;
        void *ptr = realloc(g_moddef[tag], new_size * sizeof(wcdb_moddef_t));
        if (!ptr)
            *(char *) (0xdeadbeaf) = 0;

        g_moddef[tag] = (wcdb_moddef_t *) ptr;
        g_moddef_capacity[tag] = new_size;
    }

    wcdb_moddef_t *mod = g_moddef[tag] + (g_moddef_num[tag]++);
    mod->name = name;
    mod->func = func;
}
