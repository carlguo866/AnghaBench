
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct TYPE_9__ {int mii; scalar_t__ dbug_cnt; int dev; TYPE_1__* irq_res; } ;
typedef TYPE_2__ board_info_t ;
struct TYPE_8__ {unsigned long flags; } ;


 int EAGAIN ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_MASK ;
 unsigned long IRQF_TRIGGER_NONE ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int dm9000_init_dm9000 (struct net_device*) ;
 int dm9000_interrupt ;
 int dm9000_reset (TYPE_2__*) ;
 int dm9000_schedule_poll (TYPE_2__*) ;
 int mii_check_media (int *,int ,int) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (TYPE_2__*) ;
 int netif_msg_link (TYPE_2__*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int *,unsigned long,int ,struct net_device*) ;

__attribute__((used)) static int
dm9000_open(struct net_device *dev)
{
 board_info_t *db = netdev_priv(dev);
 unsigned long irqflags = db->irq_res->flags & IRQF_TRIGGER_MASK;

 if (netif_msg_ifup(db))
  dev_dbg(db->dev, "enabling %s\n", dev->name);




 if (irqflags == IRQF_TRIGGER_NONE)
  dev_warn(db->dev, "WARNING: no IRQ resource flags set.\n");

 irqflags |= IRQF_SHARED;

 if (request_irq(dev->irq, &dm9000_interrupt, irqflags, dev->name, dev))
  return -EAGAIN;


 dm9000_reset(db);
 dm9000_init_dm9000(dev);


 db->dbug_cnt = 0;

 mii_check_media(&db->mii, netif_msg_link(db), 1);
 netif_start_queue(dev);

 dm9000_schedule_poll(db);

 return 0;
}
