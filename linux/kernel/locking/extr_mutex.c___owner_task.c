
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long MUTEX_FLAGS ;

__attribute__((used)) static inline struct task_struct *__owner_task(unsigned long owner)
{
 return (struct task_struct *)(owner & ~MUTEX_FLAGS);
}
