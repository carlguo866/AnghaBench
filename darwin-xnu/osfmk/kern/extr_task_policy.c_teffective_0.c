
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int effective_policy; } ;



__attribute__((used)) static uintptr_t
teffective_0(task_t task)
{
 uintptr_t* raw = (uintptr_t*)&task->effective_policy;

 return raw[0];
}
