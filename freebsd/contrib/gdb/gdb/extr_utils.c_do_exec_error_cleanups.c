
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int do_my_cleanups (int *,struct cleanup*) ;
 int exec_error_cleanup_chain ;

void
do_exec_error_cleanups (struct cleanup *old_chain)
{
  do_my_cleanups (&exec_error_cleanup_chain, old_chain);
}
