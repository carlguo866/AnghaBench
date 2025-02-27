
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct device {int dummy; } ;


 int WM8350_IRQ_RTC_SEC ;
 struct wm8350* dev_get_drvdata (struct device*) ;
 int wm8350_mask_irq (struct wm8350*,int ) ;
 int wm8350_unmask_irq (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_rtc_update_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);

 if (enabled)
  wm8350_unmask_irq(wm8350, WM8350_IRQ_RTC_SEC);
 else
  wm8350_mask_irq(wm8350, WM8350_IRQ_RTC_SEC);

 return 0;
}
