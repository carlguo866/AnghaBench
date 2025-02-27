
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;


 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 char* setenv_format_indexed_name (char const*,int const,struct gc_arena*) ;
 int setenv_str (struct env_set*,char const*,char const*) ;

void
setenv_str_i(struct env_set *es, const char *name, const char *value, const int i)
{
    struct gc_arena gc = gc_new();
    const char *name_str = setenv_format_indexed_name(name, i, &gc);
    setenv_str(es, name_str, value);
    gc_free(&gc);
}
