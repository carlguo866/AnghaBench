
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {struct task_struct* owner; } ;


 unsigned long RT_MUTEX_HAS_WAITERS ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;

__attribute__((used)) static void
rt_mutex_set_owner(struct rt_mutex *lock, struct task_struct *owner,
     unsigned long mask)
{
 unsigned long val = (unsigned long)owner | mask;

 if (rt_mutex_has_waiters(lock))
  val |= RT_MUTEX_HAS_WAITERS;

 lock->owner = (struct task_struct *)val;
}
