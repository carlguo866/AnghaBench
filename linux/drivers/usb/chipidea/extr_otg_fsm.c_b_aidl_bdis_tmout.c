
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int a_bus_suspend; } ;
struct ci_hdrc {TYPE_1__ fsm; } ;



__attribute__((used)) static int b_aidl_bdis_tmout(struct ci_hdrc *ci)
{
 ci->fsm.a_bus_suspend = 1;
 return 0;
}
