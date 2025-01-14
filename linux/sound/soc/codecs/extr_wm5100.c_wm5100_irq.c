
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm5100_priv {int regmap; int dev; TYPE_1__* fll; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int WM5100_ACCDET_EINT ;
 unsigned int WM5100_FLL1_LOCK_EINT ;
 unsigned int WM5100_FLL2_LOCK_EINT ;
 int WM5100_INTERRUPT_STATUS_3 ;
 int WM5100_INTERRUPT_STATUS_3_MASK ;
 int WM5100_INTERRUPT_STATUS_4 ;
 int WM5100_INTERRUPT_STATUS_4_MASK ;
 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int wm5100_log_status3 (struct wm5100_priv*,unsigned int) ;
 int wm5100_log_status4 (struct wm5100_priv*,unsigned int) ;
 int wm5100_micd_irq (struct wm5100_priv*) ;

__attribute__((used)) static irqreturn_t wm5100_irq(int irq, void *data)
{
 struct wm5100_priv *wm5100 = data;
 irqreturn_t status = IRQ_NONE;
 unsigned int irq_val, mask_val;
 int ret;

 ret = regmap_read(wm5100->regmap, WM5100_INTERRUPT_STATUS_3, &irq_val);
 if (ret < 0) {
  dev_err(wm5100->dev, "Failed to read IRQ status 3: %d\n",
   ret);
  irq_val = 0;
 }

 ret = regmap_read(wm5100->regmap, WM5100_INTERRUPT_STATUS_3_MASK,
     &mask_val);
 if (ret < 0) {
  dev_err(wm5100->dev, "Failed to read IRQ mask 3: %d\n",
   ret);
  mask_val = 0xffff;
 }

 irq_val &= ~mask_val;

 regmap_write(wm5100->regmap, WM5100_INTERRUPT_STATUS_3, irq_val);

 if (irq_val)
  status = IRQ_HANDLED;

 wm5100_log_status3(wm5100, irq_val);

 if (irq_val & WM5100_FLL1_LOCK_EINT) {
  dev_dbg(wm5100->dev, "FLL1 locked\n");
  complete(&wm5100->fll[0].lock);
 }
 if (irq_val & WM5100_FLL2_LOCK_EINT) {
  dev_dbg(wm5100->dev, "FLL2 locked\n");
  complete(&wm5100->fll[1].lock);
 }

 if (irq_val & WM5100_ACCDET_EINT)
  wm5100_micd_irq(wm5100);

 ret = regmap_read(wm5100->regmap, WM5100_INTERRUPT_STATUS_4, &irq_val);
 if (ret < 0) {
  dev_err(wm5100->dev, "Failed to read IRQ status 4: %d\n",
   ret);
  irq_val = 0;
 }

 ret = regmap_read(wm5100->regmap, WM5100_INTERRUPT_STATUS_4_MASK,
     &mask_val);
 if (ret < 0) {
  dev_err(wm5100->dev, "Failed to read IRQ mask 4: %d\n",
   ret);
  mask_val = 0xffff;
 }

 irq_val &= ~mask_val;

 if (irq_val)
  status = IRQ_HANDLED;

 regmap_write(wm5100->regmap, WM5100_INTERRUPT_STATUS_4, irq_val);

 wm5100_log_status4(wm5100, irq_val);

 return status;
}
