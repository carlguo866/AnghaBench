
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; } ;


 int IFF_NO_PI ;
 int IFF_ONE_QUEUE ;
 int IFF_TAP ;
 int IFF_TUN ;
 int IFF_VNET_HDR ;
 int TUN_NO_PI ;
 int TUN_ONE_QUEUE ;
 int TUN_TUN_DEV ;
 int TUN_VNET_HDR ;

__attribute__((used)) static int tun_flags(struct tun_struct *tun)
{
 int flags = 0;

 if (tun->flags & TUN_TUN_DEV)
  flags |= IFF_TUN;
 else
  flags |= IFF_TAP;

 if (tun->flags & TUN_NO_PI)
  flags |= IFF_NO_PI;

 if (tun->flags & TUN_ONE_QUEUE)
  flags |= IFF_ONE_QUEUE;

 if (tun->flags & TUN_VNET_HDR)
  flags |= IFF_VNET_HDR;

 return flags;
}
