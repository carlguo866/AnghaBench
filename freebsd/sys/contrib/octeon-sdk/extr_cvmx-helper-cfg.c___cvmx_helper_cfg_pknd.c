
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ccpp_pknd; } ;


 TYPE_1__** cvmx_cfg_port ;

int __cvmx_helper_cfg_pknd(int interface, int index)
{
    return cvmx_cfg_port[interface][index].ccpp_pknd;
}
