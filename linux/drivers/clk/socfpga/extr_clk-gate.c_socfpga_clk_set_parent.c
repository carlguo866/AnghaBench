
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLKMGR_L4SRC ;
 scalar_t__ CLKMGR_PERPLL_SRC ;
 int SOCFPGA_L4_MP_CLK ;
 int SOCFPGA_L4_SP_CLK ;
 int SOCFPGA_MMC_CLK ;
 int SOCFPGA_NAND_CLK ;
 int SOCFPGA_NAND_X_CLK ;
 char* clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ clk_mgr_base_addr ;
 int readl (scalar_t__) ;
 scalar_t__ streq (char const*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int socfpga_clk_set_parent(struct clk_hw *hwclk, u8 parent)
{
 u32 src_reg;
 const char *name = clk_hw_get_name(hwclk);

 if (streq(name, SOCFPGA_L4_MP_CLK)) {
  src_reg = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
  src_reg &= ~0x1;
  src_reg |= parent;
  writel(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
 } else if (streq(name, SOCFPGA_L4_SP_CLK)) {
  src_reg = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
  src_reg &= ~0x2;
  src_reg |= (parent << 1);
  writel(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
 } else {
  src_reg = readl(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
  if (streq(name, SOCFPGA_MMC_CLK)) {
   src_reg &= ~0x3;
   src_reg |= parent;
  } else if (streq(name, SOCFPGA_NAND_CLK) ||
   streq(name, SOCFPGA_NAND_X_CLK)) {
   src_reg &= ~0xC;
   src_reg |= (parent << 2);
  } else {
   src_reg &= ~0x30;
   src_reg |= (parent << 4);
  }
  writel(src_reg, clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
 }

 return 0;
}
