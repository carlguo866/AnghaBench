
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct link_vars {int dummy; } ;
struct link_params {int* mac_addr; scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BIGMAC_REGISTER_BMAC_CONTROL ;
 int BIGMAC_REGISTER_BMAC_XGXS_CONTROL ;
 int BIGMAC_REGISTER_CNT_MAX_SIZE ;
 int BIGMAC_REGISTER_RX_LLFC_MSG_FLDS ;
 int BIGMAC_REGISTER_RX_MAX_SIZE ;
 int BIGMAC_REGISTER_TX_MAX_SIZE ;
 int BIGMAC_REGISTER_TX_SOURCE_ADDR ;
 int DP (int ,char*) ;
 int ETH_MAX_JUMBO_PACKET_SIZE ;
 int ETH_OVREHEAD ;
 int NETIF_MSG_LINK ;
 int NIG_REG_INGRESS_BMAC0_MEM ;
 int NIG_REG_INGRESS_BMAC1_MEM ;
 int REG_WR_DMAE (struct bnx2x*,int,int*,int) ;
 int bnx2x_update_pfc_bmac1 (struct link_params*,struct link_vars*) ;

__attribute__((used)) static int bnx2x_bmac1_enable(struct link_params *params,
         struct link_vars *vars,
         u8 is_lb)
{
 struct bnx2x *bp = params->bp;
 u8 port = params->port;
 u32 bmac_addr = port ? NIG_REG_INGRESS_BMAC1_MEM :
          NIG_REG_INGRESS_BMAC0_MEM;
 u32 wb_data[2];
 u32 val;

 DP(NETIF_MSG_LINK, "Enabling BigMAC1\n");


 wb_data[0] = 0x3c;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_BMAC_XGXS_CONTROL,
      wb_data, 2);


 wb_data[0] = ((params->mac_addr[2] << 24) |
         (params->mac_addr[3] << 16) |
         (params->mac_addr[4] << 8) |
   params->mac_addr[5]);
 wb_data[1] = ((params->mac_addr[0] << 8) |
   params->mac_addr[1]);
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_TX_SOURCE_ADDR, wb_data, 2);


 val = 0x3;
 if (is_lb) {
  val |= 0x4;
  DP(NETIF_MSG_LINK, "enable bmac loopback\n");
 }
 wb_data[0] = val;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_BMAC_CONTROL, wb_data, 2);


 wb_data[0] = ETH_MAX_JUMBO_PACKET_SIZE + ETH_OVREHEAD;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_RX_MAX_SIZE, wb_data, 2);

 bnx2x_update_pfc_bmac1(params, vars);


 wb_data[0] = ETH_MAX_JUMBO_PACKET_SIZE + ETH_OVREHEAD;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_TX_MAX_SIZE, wb_data, 2);


 wb_data[0] = ETH_MAX_JUMBO_PACKET_SIZE + ETH_OVREHEAD;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_CNT_MAX_SIZE, wb_data, 2);


 wb_data[0] = 0x1000200;
 wb_data[1] = 0;
 REG_WR_DMAE(bp, bmac_addr + BIGMAC_REGISTER_RX_LLFC_MSG_FLDS,
      wb_data, 2);

 return 0;
}
