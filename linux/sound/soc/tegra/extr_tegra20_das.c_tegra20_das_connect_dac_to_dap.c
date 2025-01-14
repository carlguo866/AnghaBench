
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENODEV ;
 int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL ;
 int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_CLK_SEL_P ;
 int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_SDATA1_SEL_P ;
 int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_SDATA2_SEL_P ;
 int TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_STRIDE ;
 int das ;
 int tegra20_das_write (int,int) ;

int tegra20_das_connect_dac_to_dap(int dac, int dap)
{
 u32 addr;
 u32 reg;

 if (!das)
  return -ENODEV;

 addr = TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL +
  (dac * TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_STRIDE);
 reg = dap << TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_CLK_SEL_P |
  dap << TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_SDATA1_SEL_P |
  dap << TEGRA20_DAS_DAC_INPUT_DATA_CLK_SEL_DAC_SDATA2_SEL_P;

 tegra20_das_write(addr, reg);

 return 0;
}
