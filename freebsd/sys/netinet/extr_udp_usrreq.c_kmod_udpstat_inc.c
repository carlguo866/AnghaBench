
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * VNET (int ) ;
 int counter_u64_add (int ,int) ;
 int udpstat ;

void
kmod_udpstat_inc(int statnum)
{

 counter_u64_add(VNET(udpstat)[statnum], 1);
}
