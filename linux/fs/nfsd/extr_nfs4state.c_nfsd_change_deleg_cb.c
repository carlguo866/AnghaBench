
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file_lock {int dummy; } ;


 int EAGAIN ;
 int F_UNLCK ;
 int lease_modify (struct file_lock*,int,struct list_head*) ;

__attribute__((used)) static int
nfsd_change_deleg_cb(struct file_lock *onlist, int arg,
       struct list_head *dispose)
{
 if (arg & F_UNLCK)
  return lease_modify(onlist, arg, dispose);
 else
  return -EAGAIN;
}
