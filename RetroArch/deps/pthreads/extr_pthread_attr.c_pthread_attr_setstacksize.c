
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {size_t stacksize; } ;


 int EINVAL ;
 int ENOSYS ;
 size_t PTHREAD_STACK_MIN ;
 scalar_t__ pte_is_attr (TYPE_1__**) ;

int pthread_attr_setstacksize (pthread_attr_t * attr, size_t stacksize)
{
   return ENOSYS;


}
