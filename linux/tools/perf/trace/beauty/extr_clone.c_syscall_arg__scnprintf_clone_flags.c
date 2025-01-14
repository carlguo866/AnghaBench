
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int mask; int show_string_prefix; } ;


 unsigned long CLONE_CHILD_CLEARTID ;
 unsigned long CLONE_CHILD_SETTID ;
 unsigned long CLONE_PARENT_SETTID ;
 unsigned long CLONE_SETTLS ;
 size_t clone__scnprintf_flags (unsigned long,char*,size_t,int ) ;

size_t syscall_arg__scnprintf_clone_flags(char *bf, size_t size, struct syscall_arg *arg)
{
 unsigned long flags = arg->val;
 enum syscall_clone_args {
  SCC_FLAGS = (1 << 0),
  SCC_CHILD_STACK = (1 << 1),
  SCC_PARENT_TIDPTR = (1 << 2),
  SCC_CHILD_TIDPTR = (1 << 3),
  SCC_TLS = (1 << 4),
 };
 if (!(flags & CLONE_PARENT_SETTID))
  arg->mask |= SCC_PARENT_TIDPTR;

 if (!(flags & (CLONE_CHILD_SETTID | CLONE_CHILD_CLEARTID)))
  arg->mask |= SCC_CHILD_TIDPTR;

 if (!(flags & CLONE_SETTLS))
  arg->mask |= SCC_TLS;

 return clone__scnprintf_flags(flags, bf, size, arg->show_string_prefix);
}
