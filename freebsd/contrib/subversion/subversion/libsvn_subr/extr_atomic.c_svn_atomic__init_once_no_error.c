
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_atomic_t ;
typedef int svn_atomic__str_init_func_t ;
struct TYPE_3__ {char const* errstr; void* baton; int str_init_func; } ;
typedef TYPE_1__ init_baton_t ;


 scalar_t__ init_once (int volatile*,int ,TYPE_1__*) ;
 int str_init_func_wrapper ;

const char *
svn_atomic__init_once_no_error(volatile svn_atomic_t *global_status,
                               svn_atomic__str_init_func_t str_init_func,
                               void *baton)
{
  init_baton_t init_baton;
  init_baton.str_init_func = str_init_func;
  init_baton.errstr = ((void*)0);
  init_baton.baton = baton;

  if (init_once(global_status, str_init_func_wrapper, &init_baton))
    return ((void*)0);



  if (!init_baton.errstr)
    return "Couldn't perform atomic initialization";
  else
    return init_baton.errstr;
}
