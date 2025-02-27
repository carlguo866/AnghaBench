
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_6__ {int* eth_regs; int wolopts; TYPE_1__* usb; } ;
typedef TYPE_2__ pegasus_t ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 int WOL_SUPPORTED ;
 int WakeupControl ;
 int device_set_wakeup_enable (int *,int) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int set_register (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
pegasus_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 pegasus_t *pegasus = netdev_priv(dev);
 u8 reg78 = 0x04;
 int ret;

 if (wol->wolopts & ~WOL_SUPPORTED)
  return -EINVAL;

 if (wol->wolopts & WAKE_MAGIC)
  reg78 |= 0x80;
 if (wol->wolopts & WAKE_PHY)
  reg78 |= 0x40;

 if (wol->wolopts)
  pegasus->eth_regs[0] |= 0x10;
 else
  pegasus->eth_regs[0] &= ~0x10;
 pegasus->wolopts = wol->wolopts;

 ret = set_register(pegasus, WakeupControl, reg78);
 if (!ret)
  ret = device_set_wakeup_enable(&pegasus->usb->dev,
      wol->wolopts);
 return ret;
}
