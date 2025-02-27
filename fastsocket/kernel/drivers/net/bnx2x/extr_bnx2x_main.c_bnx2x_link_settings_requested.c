
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int* advertising; size_t* link_config; int* supported; } ;
struct TYPE_6__ {int num_phys; size_t* req_flow_ctrl; void** req_duplex; void** req_line_speed; int * speed_cap_mask; TYPE_1__* phy; } ;
struct bnx2x {TYPE_2__ port; TYPE_3__ link_params; } ;
struct TYPE_4__ {int type; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_2500baseX_Full ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int BNX2X_DEV_INFO (char*,void*,void*,size_t,int) ;
 int BNX2X_ERR (char*,size_t,...) ;
 size_t BNX2X_FLOW_CTRL_AUTO ;
 size_t BNX2X_FLOW_CTRL_NONE ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 size_t EXT_PHY1 ;
 size_t PORT_FEATURE_FLOW_CONTROL_MASK ;
 size_t PORT_FEATURE_LINK_SPEED_MASK ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 void* SPEED_10000 ;
 void* SPEED_20000 ;
 void* SPEED_2500 ;
 void* SPEED_AUTO_NEG ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Autoneg ;
 int bnx2x_set_requested_fc (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_link_settings_requested(struct bnx2x *bp)
{
 u32 link_config, idx, cfg_size = 0;
 bp->port.advertising[0] = 0;
 bp->port.advertising[1] = 0;
 switch (bp->link_params.num_phys) {
 case 1:
 case 2:
  cfg_size = 1;
  break;
 case 3:
  cfg_size = 2;
  break;
 }
 for (idx = 0; idx < cfg_size; idx++) {
  bp->link_params.req_duplex[idx] = DUPLEX_FULL;
  link_config = bp->port.link_config[idx];
  switch (link_config & PORT_FEATURE_LINK_SPEED_MASK) {
  case 128:
   if (bp->port.supported[idx] & SUPPORTED_Autoneg) {
    bp->link_params.req_line_speed[idx] =
     SPEED_AUTO_NEG;
    bp->port.advertising[idx] |=
     bp->port.supported[idx];
    if (bp->link_params.phy[EXT_PHY1].type ==
        PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833)
     bp->port.advertising[idx] |=
     (SUPPORTED_100baseT_Half |
      SUPPORTED_100baseT_Full);
   } else {

    bp->link_params.req_line_speed[idx] =
     SPEED_10000;
    bp->port.advertising[idx] |=
     (ADVERTISED_10000baseT_Full |
      ADVERTISED_FIBRE);
    continue;
   }
   break;

  case 133:
   if (bp->port.supported[idx] & SUPPORTED_10baseT_Full) {
    bp->link_params.req_line_speed[idx] =
     SPEED_10;
    bp->port.advertising[idx] |=
     (ADVERTISED_10baseT_Full |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
         link_config,
        bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 132:
   if (bp->port.supported[idx] & SUPPORTED_10baseT_Half) {
    bp->link_params.req_line_speed[idx] =
     SPEED_10;
    bp->link_params.req_duplex[idx] =
     DUPLEX_HALF;
    bp->port.advertising[idx] |=
     (ADVERTISED_10baseT_Half |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
         link_config,
       bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 136:
   if (bp->port.supported[idx] &
       SUPPORTED_100baseT_Full) {
    bp->link_params.req_line_speed[idx] =
     SPEED_100;
    bp->port.advertising[idx] |=
     (ADVERTISED_100baseT_Full |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
         link_config,
       bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 135:
   if (bp->port.supported[idx] &
       SUPPORTED_100baseT_Half) {
    bp->link_params.req_line_speed[idx] =
        SPEED_100;
    bp->link_params.req_duplex[idx] =
        DUPLEX_HALF;
    bp->port.advertising[idx] |=
     (ADVERTISED_100baseT_Half |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
        link_config,
        bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 131:
   if (bp->port.supported[idx] &
       SUPPORTED_1000baseT_Full) {
    bp->link_params.req_line_speed[idx] =
     SPEED_1000;
    bp->port.advertising[idx] |=
     (ADVERTISED_1000baseT_Full |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
        link_config,
        bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 129:
   if (bp->port.supported[idx] &
       SUPPORTED_2500baseX_Full) {
    bp->link_params.req_line_speed[idx] =
     SPEED_2500;
    bp->port.advertising[idx] |=
     (ADVERTISED_2500baseX_Full |
      ADVERTISED_TP);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
        link_config,
        bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;

  case 134:
   if (bp->port.supported[idx] &
       SUPPORTED_10000baseT_Full) {
    bp->link_params.req_line_speed[idx] =
     SPEED_10000;
    bp->port.advertising[idx] |=
     (ADVERTISED_10000baseT_Full |
      ADVERTISED_FIBRE);
   } else {
    BNX2X_ERR("NVRAM config error. Invalid link_config 0x%x  speed_cap_mask 0x%x\n",
        link_config,
        bp->link_params.speed_cap_mask[idx]);
    return;
   }
   break;
  case 130:
   bp->link_params.req_line_speed[idx] = SPEED_20000;

   break;
  default:
   BNX2X_ERR("NVRAM config error. BAD link speed link_config 0x%x\n",
      link_config);
    bp->link_params.req_line_speed[idx] =
       SPEED_AUTO_NEG;
    bp->port.advertising[idx] =
      bp->port.supported[idx];
   break;
  }

  bp->link_params.req_flow_ctrl[idx] = (link_config &
      PORT_FEATURE_FLOW_CONTROL_MASK);
  if (bp->link_params.req_flow_ctrl[idx] ==
      BNX2X_FLOW_CTRL_AUTO) {
   if (!(bp->port.supported[idx] & SUPPORTED_Autoneg))
    bp->link_params.req_flow_ctrl[idx] =
       BNX2X_FLOW_CTRL_NONE;
   else
    bnx2x_set_requested_fc(bp);
  }

  BNX2X_DEV_INFO("req_line_speed %d  req_duplex %d req_flow_ctrl 0x%x advertising 0x%x\n",
          bp->link_params.req_line_speed[idx],
          bp->link_params.req_duplex[idx],
          bp->link_params.req_flow_ctrl[idx],
          bp->port.advertising[idx]);
 }
}
