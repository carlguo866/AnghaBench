
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_usbmisc_data {int index; int dev; } ;
struct imx_usbmisc {int lock; scalar_t__ base; } ;


 int EINVAL ;
 int MX6_BM_ID_WAKEUP ;
 int MX6_BM_VBUS_WAKEUP ;
 int MX6_BM_WAKEUP_ENABLE ;
 int MX6_BM_WAKEUP_INTR ;
 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int pr_debug (char*,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int usbmisc_imx6q_set_wakeup
 (struct imx_usbmisc_data *data, bool enabled)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);
 unsigned long flags;
 u32 val;
 u32 wakeup_setting = (MX6_BM_WAKEUP_ENABLE |
  MX6_BM_VBUS_WAKEUP | MX6_BM_ID_WAKEUP);
 int ret = 0;

 if (data->index > 3)
  return -EINVAL;

 spin_lock_irqsave(&usbmisc->lock, flags);
 val = readl(usbmisc->base + data->index * 4);
 if (enabled) {
  val |= wakeup_setting;
 } else {
  if (val & MX6_BM_WAKEUP_INTR)
   pr_debug("wakeup int at ci_hdrc.%d\n", data->index);
  val &= ~wakeup_setting;
 }
 writel(val, usbmisc->base + data->index * 4);
 spin_unlock_irqrestore(&usbmisc->lock, flags);

 return ret;
}
