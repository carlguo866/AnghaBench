
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* ipv6_addr; } ;
typedef TYPE_1__ IP ;


 int ZeroIP6 (TYPE_1__*) ;

void GetAllNodeMulticaseAddress6(IP *ip)
{

 if (ip == ((void*)0))
 {
  return;
 }

 ZeroIP6(ip);

 ip->ipv6_addr[0] = 0xff;
 ip->ipv6_addr[1] = 0x02;
 ip->ipv6_addr[15] = 0x01;
}
