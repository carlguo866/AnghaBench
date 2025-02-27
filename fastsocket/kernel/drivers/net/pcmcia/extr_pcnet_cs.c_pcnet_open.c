
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct pcmcia_device {int open; } ;
struct net_device {unsigned int base_addr; int irq; int name; } ;
struct TYPE_6__ {scalar_t__ expires; scalar_t__ data; int * function; } ;
struct TYPE_5__ {int link_status; TYPE_2__ watchdog; int eth_phy; int phy_id; struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ pcnet_dev_t ;


 int DEBUG (int,char*,int ) ;
 scalar_t__ EN0_ISR ;
 int ENODEV ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 TYPE_1__* PRIV (struct net_device*) ;
 int add_timer (TYPE_2__*) ;
 int dev_info ;
 int ei_irq_wrapper ;
 int ei_open (struct net_device*) ;
 int ei_watchdog ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int outb_p (int,scalar_t__) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int set_misc_reg (struct net_device*) ;

__attribute__((used)) static int pcnet_open(struct net_device *dev)
{
    int ret;
    pcnet_dev_t *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;

    DEBUG(2, "pcnet_open('%s')\n", dev->name);

    if (!pcmcia_dev_present(link))
 return -ENODEV;

    set_misc_reg(dev);

    outb_p(0xFF, nic_base + EN0_ISR);
    ret = request_irq(dev->irq, ei_irq_wrapper, IRQF_SHARED, dev_info, dev);
    if (ret)
     return ret;

    link->open++;

    info->phy_id = info->eth_phy;
    info->link_status = 0x00;
    init_timer(&info->watchdog);
    info->watchdog.function = &ei_watchdog;
    info->watchdog.data = (u_long)dev;
    info->watchdog.expires = jiffies + HZ;
    add_timer(&info->watchdog);

    return ei_open(dev);
}
