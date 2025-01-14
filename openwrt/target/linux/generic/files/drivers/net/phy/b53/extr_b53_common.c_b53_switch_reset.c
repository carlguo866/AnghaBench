
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct b53_device {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int B53_CTRL_PAGE ;
 int B53_SOFTRESET ;
 int B53_SWITCH_MODE ;
 int EINVAL ;
 int SM_SW_FWD_EN ;
 int SM_SW_FWD_MODE ;
 int b53_configure_ports (struct b53_device*) ;
 int b53_configure_ports_of (struct b53_device*) ;
 int b53_enable_mib (struct b53_device*) ;
 int b53_enable_ports (struct b53_device*) ;
 int b53_flush_arl (struct b53_device*) ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_switch_reset_gpio (struct b53_device*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 scalar_t__ is539x (struct b53_device*) ;
 int pr_err (char*) ;

__attribute__((used)) static int b53_switch_reset(struct b53_device *dev)
{
 int ret = 0;
 u8 mgmt;

 b53_switch_reset_gpio(dev);

 if (is539x(dev)) {
  b53_write8(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x83);
  b53_write8(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x00);
 }

 b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

 if (!(mgmt & SM_SW_FWD_EN)) {
  mgmt &= ~SM_SW_FWD_MODE;
  mgmt |= SM_SW_FWD_EN;

  b53_write8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
  b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

  if (!(mgmt & SM_SW_FWD_EN)) {
   pr_err("Failed to enable switch!\n");
   return -EINVAL;
  }
 }


 b53_enable_ports(dev);

 if (dev->dev->of_node)
  ret = b53_configure_ports_of(dev);
 else
  ret = b53_configure_ports(dev);

 if (ret)
  return ret;

 b53_enable_mib(dev);

 return b53_flush_arl(dev);
}
