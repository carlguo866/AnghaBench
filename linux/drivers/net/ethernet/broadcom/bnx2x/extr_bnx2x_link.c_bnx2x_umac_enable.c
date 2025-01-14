
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct link_vars {int line_speed; int flow_ctrl; scalar_t__ duplex; int eee_status; int mac_type; } ;
struct link_params {int port; int* mac_addr; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FLOW_CTRL_RX ;
 int BNX2X_FLOW_CTRL_TX ;
 int DP (int ,char*,...) ;
 scalar_t__ DUPLEX_HALF ;
 int GRCBASE_MISC ;
 int GRCBASE_UMAC0 ;
 int GRCBASE_UMAC1 ;
 int MAC_TYPE_UMAC ;
 int MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_SET ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int NETIF_MSG_LINK ;
 int NIG_REG_EGRESS_EMAC0_PORT ;
 int REG_WR (struct bnx2x*,int,int) ;
 int SHMEM_EEE_ADV_STATUS_MASK ;




 int UMAC_COMMAND_CONFIG_REG_HD_ENA ;
 int UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE ;
 int UMAC_COMMAND_CONFIG_REG_LOOP_ENA ;
 int UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK ;
 int UMAC_COMMAND_CONFIG_REG_PAD_EN ;
 int UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE ;
 int UMAC_COMMAND_CONFIG_REG_PROMIS_EN ;
 int UMAC_COMMAND_CONFIG_REG_RX_ENA ;
 int UMAC_COMMAND_CONFIG_REG_SW_RESET ;
 int UMAC_COMMAND_CONFIG_REG_TX_ENA ;
 int UMAC_REG_COMMAND_CONFIG ;
 int UMAC_REG_EEE_WAKE_TIMER ;
 int UMAC_REG_MAC_ADDR0 ;
 int UMAC_REG_MAC_ADDR1 ;
 int UMAC_REG_MAXFR ;
 int UMAC_REG_UMAC_EEE_CTRL ;
 int UMAC_UMAC_EEE_CTRL_REG_EEE_EN ;
 int bnx2x_set_xumac_nig (struct link_params*,int,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bnx2x_umac_enable(struct link_params *params,
       struct link_vars *vars, u8 lb)
{
 u32 val;
 u32 umac_base = params->port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
 struct bnx2x *bp = params->bp;

 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
        (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));
 usleep_range(1000, 2000);

 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
        (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));

 DP(NETIF_MSG_LINK, "enabling UMAC\n");


 REG_WR(bp, NIG_REG_EGRESS_EMAC0_PORT + params->port*4, 1);

 val = UMAC_COMMAND_CONFIG_REG_PROMIS_EN |
  UMAC_COMMAND_CONFIG_REG_PAD_EN |
  UMAC_COMMAND_CONFIG_REG_SW_RESET |
  UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK;
 switch (vars->line_speed) {
 case 131:
  val |= (0<<2);
  break;
 case 130:
  val |= (1<<2);
  break;
 case 129:
  val |= (2<<2);
  break;
 case 128:
  val |= (3<<2);
  break;
 default:
  DP(NETIF_MSG_LINK, "Invalid speed for UMAC %d\n",
          vars->line_speed);
  break;
 }
 if (!(vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
  val |= UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE;

 if (!(vars->flow_ctrl & BNX2X_FLOW_CTRL_RX))
  val |= UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE;

 if (vars->duplex == DUPLEX_HALF)
  val |= UMAC_COMMAND_CONFIG_REG_HD_ENA;

 REG_WR(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);
 udelay(50);


 if (vars->eee_status & SHMEM_EEE_ADV_STATUS_MASK) {
  DP(NETIF_MSG_LINK, "configured UMAC for EEE\n");
  REG_WR(bp, umac_base + UMAC_REG_UMAC_EEE_CTRL,
         UMAC_UMAC_EEE_CTRL_REG_EEE_EN);
  REG_WR(bp, umac_base + UMAC_REG_EEE_WAKE_TIMER, 0x11);
 } else {
  REG_WR(bp, umac_base + UMAC_REG_UMAC_EEE_CTRL, 0x0);
 }


 REG_WR(bp, umac_base + UMAC_REG_MAC_ADDR0,
        ((params->mac_addr[2] << 24) |
  (params->mac_addr[3] << 16) |
  (params->mac_addr[4] << 8) |
  (params->mac_addr[5])));
 REG_WR(bp, umac_base + UMAC_REG_MAC_ADDR1,
        ((params->mac_addr[0] << 8) |
  (params->mac_addr[1])));


 val &= ~UMAC_COMMAND_CONFIG_REG_PAD_EN;
 val |= UMAC_COMMAND_CONFIG_REG_TX_ENA |
  UMAC_COMMAND_CONFIG_REG_RX_ENA;
 REG_WR(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);
 udelay(50);


 val &= ~UMAC_COMMAND_CONFIG_REG_SW_RESET;


 if (lb)
  val |= UMAC_COMMAND_CONFIG_REG_LOOP_ENA;
 REG_WR(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);




 REG_WR(bp, umac_base + UMAC_REG_MAXFR, 0x2710);
 bnx2x_set_xumac_nig(params,
       ((vars->flow_ctrl & BNX2X_FLOW_CTRL_TX) != 0), 1);
 vars->mac_type = MAC_TYPE_UMAC;

}
