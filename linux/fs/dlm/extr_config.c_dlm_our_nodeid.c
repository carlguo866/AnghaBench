
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodeid; } ;


 TYPE_1__* local_comm ;

int dlm_our_nodeid(void)
{
 return local_comm ? local_comm->nodeid : 0;
}
