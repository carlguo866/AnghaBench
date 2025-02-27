
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_sata_pad {scalar_t__ enable; int pll; int rst; } ;
struct tegra_xusb_padctl {int sata; } ;


 int ETIMEDOUT ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK ;
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT ;
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL ;
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE ;
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN ;
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD ;
 int XUSB_PADCTL_UPHY_PLL_S0_CTL1 ;
 int XUSB_PADCTL_UPHY_PLL_S0_CTL2 ;
 int XUSB_PADCTL_UPHY_PLL_S0_CTL4 ;
 int XUSB_PADCTL_UPHY_PLL_S0_CTL5 ;
 int XUSB_PADCTL_UPHY_PLL_S0_CTL8 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int tegra210_sata_pll_hw_control_enable () ;
 int tegra210_sata_pll_hw_sequence_start () ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct tegra_xusb_sata_pad* to_sata_pad (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra210_sata_uphy_enable(struct tegra_xusb_padctl *padctl, bool usb)
{
 struct tegra_xusb_sata_pad *sata = to_sata_pad(padctl->sata);
 unsigned long timeout;
 u32 value;
 int err;

 if (sata->enable > 0) {
  sata->enable++;
  return 0;
 }

 err = clk_prepare_enable(sata->pll);
 if (err < 0)
  return err;

 err = reset_control_deassert(sata->rst);
 if (err < 0)
  goto disable;

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
 value &= ~(XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK <<
     XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT);
 value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL <<
   XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL5);
 value &= ~(XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK <<
     XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT);
 value |= XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL <<
   XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL5);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value |= XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
 value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
 value |= XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL4);
 value &= ~((XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK <<
      XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT) |
     (XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK <<
      XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT));
 value |= XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN;

 if (usb)
  value |= (XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL <<
     XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT);
 else
  value |= (XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL <<
     XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT);

 value &= ~XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL4);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value &= ~((XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK <<
      XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT) |
     (XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK <<
      XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT));

 if (usb)
  value |= XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL <<
    XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT;
 else
  value |= XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL <<
    XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT;

 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value &= ~(XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK <<
     XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT);
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 usleep_range(10, 20);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL4);
 value |= XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL4);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
 value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

 timeout = jiffies + msecs_to_jiffies(100);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
  if (value & XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE)
   break;

  usleep_range(10, 20);
 }

 if (time_after_eq(jiffies, timeout)) {
  err = -ETIMEDOUT;
  goto reset;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

 timeout = jiffies + msecs_to_jiffies(100);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
  if (!(value & XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE))
   break;

  usleep_range(10, 20);
 }

 if (time_after_eq(jiffies, timeout)) {
  err = -ETIMEDOUT;
  goto reset;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value |= XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 timeout = jiffies + msecs_to_jiffies(100);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
  if (value & XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS)
   break;

  usleep_range(10, 20);
 }

 if (time_after_eq(jiffies, timeout)) {
  err = -ETIMEDOUT;
  goto reset;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
 value |= XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN |
   XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

 timeout = jiffies + msecs_to_jiffies(100);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
  if (value & XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE)
   break;

  usleep_range(10, 20);
 }

 if (time_after_eq(jiffies, timeout)) {
  err = -ETIMEDOUT;
  goto reset;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

 timeout = jiffies + msecs_to_jiffies(100);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
  if (!(value & XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE))
   break;

  usleep_range(10, 20);
 }

 if (time_after_eq(jiffies, timeout)) {
  err = -ETIMEDOUT;
  goto reset;
 }

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

 tegra210_sata_pll_hw_control_enable();

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

 value = padctl_readl(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
 value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD;
 padctl_writel(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

 usleep_range(10, 20);

 tegra210_sata_pll_hw_sequence_start();

 sata->enable++;

 return 0;

reset:
 reset_control_assert(sata->rst);
disable:
 clk_disable_unprepare(sata->pll);
 return err;
}
