
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AM35XX_CONTROL_LVL_INTR_CLEAR ;
 int AM35XX_USBOTGSS_INT_CLR ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int ,int ) ;

void am35x_musb_clear_irq(void)
{
 u32 regval;

 regval = omap_ctrl_readl(AM35XX_CONTROL_LVL_INTR_CLEAR);
 regval |= AM35XX_USBOTGSS_INT_CLR;
 omap_ctrl_writel(regval, AM35XX_CONTROL_LVL_INTR_CLEAR);
 regval = omap_ctrl_readl(AM35XX_CONTROL_LVL_INTR_CLEAR);
}
