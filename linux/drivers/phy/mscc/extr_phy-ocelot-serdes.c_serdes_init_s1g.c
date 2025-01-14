
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int HSIO_S1G_COMMON_CFG ;
 int HSIO_S1G_COMMON_CFG_ENA_ELOOP ;
 int HSIO_S1G_COMMON_CFG_ENA_FLOOP ;
 int HSIO_S1G_COMMON_CFG_ENA_LANE ;
 int HSIO_S1G_COMMON_CFG_SYS_RST ;
 int HSIO_S1G_MISC_CFG ;
 int HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA ;
 int HSIO_S1G_MISC_CFG_LANE_RST ;
 int HSIO_S1G_PLL_CFG ;
 int HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA (int) ;
 int HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M ;
 int HSIO_S1G_PLL_CFG_PLL_FSM_ENA ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int serdes_commit_mcb_s1g (struct regmap*,int ) ;
 int serdes_update_mcb_s1g (struct regmap*,int ) ;

__attribute__((used)) static int serdes_init_s1g(struct regmap *regmap, u8 serdes)
{
 int ret;

 ret = serdes_update_mcb_s1g(regmap, serdes);
 if (ret)
  return ret;

 regmap_update_bits(regmap, HSIO_S1G_COMMON_CFG,
      HSIO_S1G_COMMON_CFG_SYS_RST |
      HSIO_S1G_COMMON_CFG_ENA_LANE |
      HSIO_S1G_COMMON_CFG_ENA_ELOOP |
      HSIO_S1G_COMMON_CFG_ENA_FLOOP,
      HSIO_S1G_COMMON_CFG_ENA_LANE);

 regmap_update_bits(regmap, HSIO_S1G_PLL_CFG,
      HSIO_S1G_PLL_CFG_PLL_FSM_ENA |
      HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M,
      HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA(200) |
      HSIO_S1G_PLL_CFG_PLL_FSM_ENA);

 regmap_update_bits(regmap, HSIO_S1G_MISC_CFG,
      HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA |
      HSIO_S1G_MISC_CFG_LANE_RST,
      HSIO_S1G_MISC_CFG_LANE_RST);

 ret = serdes_commit_mcb_s1g(regmap, serdes);
 if (ret)
  return ret;

 regmap_update_bits(regmap, HSIO_S1G_COMMON_CFG,
      HSIO_S1G_COMMON_CFG_SYS_RST,
      HSIO_S1G_COMMON_CFG_SYS_RST);

 regmap_update_bits(regmap, HSIO_S1G_MISC_CFG,
      HSIO_S1G_MISC_CFG_LANE_RST, 0);

 ret = serdes_commit_mcb_s1g(regmap, serdes);
 if (ret)
  return ret;

 return 0;
}
