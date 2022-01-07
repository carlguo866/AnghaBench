
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int* dev_addr; struct in_device* ip_ptr; } ;
struct in_ifaddr {int ifa_local; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;


 int ETH_ALEN ;
 struct net_device* MASTER_TO_SLAVE (struct net_device*) ;
 int isdn_lock_drivers () ;
 int isdn_net_reset (struct net_device*) ;
 int memcpy (int*,int *,int) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int
isdn_net_open(struct net_device *dev)
{
 int i;
 struct net_device *p;
 struct in_device *in_dev;




 netif_start_queue(dev);

 isdn_net_reset(dev);

 for (i = 0; i < ETH_ALEN - sizeof(u32); i++)
  dev->dev_addr[i] = 0xfc;
 if ((in_dev = dev->ip_ptr) != ((void*)0)) {



  struct in_ifaddr *ifa = in_dev->ifa_list;
  if (ifa != ((void*)0))
   memcpy(dev->dev_addr+2, &ifa->ifa_local, 4);
 }


 p = MASTER_TO_SLAVE(dev);
 if (p) {
  while (p) {
   isdn_net_reset(p);
   p = MASTER_TO_SLAVE(p);
  }
 }
 isdn_lock_drivers();
 return 0;
}
