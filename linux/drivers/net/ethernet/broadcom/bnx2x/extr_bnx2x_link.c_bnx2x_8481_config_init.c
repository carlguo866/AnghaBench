
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int bnx2x_848xx_cmn_config_init (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_hw_reset (struct bnx2x*,int ) ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_wait_reset_complete (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static int bnx2x_8481_config_init(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;

 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);


 bnx2x_ext_phy_hw_reset(bp, params->port);
 bnx2x_wait_reset_complete(bp, phy, params);

 bnx2x_cl45_write(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
 return bnx2x_848xx_cmn_config_init(phy, params, vars);
}
