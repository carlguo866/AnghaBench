
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_device_list {int list; int lock; } ;
struct phonet_device {int list; int addrs; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int bitmap_zero (int ,int) ;
 int dev_net (struct net_device*) ;
 struct phonet_device* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_is_locked (int *) ;
 struct phonet_device_list* phonet_device_list (int ) ;

__attribute__((used)) static struct phonet_device *__phonet_device_alloc(struct net_device *dev)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd = kmalloc(sizeof(*pnd), GFP_ATOMIC);
 if (pnd == ((void*)0))
  return ((void*)0);
 pnd->netdev = dev;
 bitmap_zero(pnd->addrs, 64);

 BUG_ON(!mutex_is_locked(&pndevs->lock));
 list_add_rcu(&pnd->list, &pndevs->list);
 return pnd;
}
