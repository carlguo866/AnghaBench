
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct elink_vars {scalar_t__ mac_type; int flow_ctrl; int link_up; int link_status; } ;
struct elink_params {scalar_t__ loopback_mode; int feature_config_flags; int port; struct bxe_softc* sc; } ;
struct elink_nig_brb_pfc_port_params {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_FEATURE_CONFIG_PFC_ENABLED ;
 int ELINK_FLOW_CTRL_TX ;
 scalar_t__ ELINK_LOOPBACK_BMAC ;
 scalar_t__ ELINK_MAC_TYPE_XMAC ;
 int ELINK_STATUS_OK ;
 int LINK_STATUS_PFC_ENABLED ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REG_RESET_REG_2 ;
 scalar_t__ NIG_REG_BMAC0_PAUSE_OUT_EN ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_emac_enable (struct elink_params*,struct elink_vars*,int ) ;
 int elink_update_mng (struct elink_params*,int ) ;
 int elink_update_pfc_bmac1 (struct elink_params*,struct elink_vars*) ;
 int elink_update_pfc_bmac2 (struct elink_params*,struct elink_vars*,int) ;
 int elink_update_pfc_nig (struct elink_params*,struct elink_vars*,struct elink_nig_brb_pfc_port_params*) ;
 int elink_update_pfc_xmac (struct elink_params*,struct elink_vars*,int ) ;

elink_status_t elink_update_pfc(struct elink_params *params,
        struct elink_vars *vars,
        struct elink_nig_brb_pfc_port_params *pfc_params)
{




 uint32_t val;
 struct bxe_softc *sc = params->sc;
 uint8_t bmac_loopback = (params->loopback_mode == ELINK_LOOPBACK_BMAC);

 if (params->feature_config_flags & ELINK_FEATURE_CONFIG_PFC_ENABLED)
  vars->link_status |= LINK_STATUS_PFC_ENABLED;
 else
  vars->link_status &= ~LINK_STATUS_PFC_ENABLED;

 elink_update_mng(params, vars->link_status);


 elink_update_pfc_nig(params, vars, pfc_params);

 if (!vars->link_up)
  return ELINK_STATUS_OK;

 ELINK_DEBUG_P0(sc, "About to update PFC in BMAC\n");

 if (CHIP_IS_E3(sc)) {
  if (vars->mac_type == ELINK_MAC_TYPE_XMAC)
   elink_update_pfc_xmac(params, vars, 0);
 } else {
  val = REG_RD(sc, MISC_REG_RESET_REG_2);
  if ((val &
       (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << params->port))
      == 0) {
   ELINK_DEBUG_P0(sc, "About to update PFC in EMAC\n");
   elink_emac_enable(params, vars, 0);
   return ELINK_STATUS_OK;
  }
  if (CHIP_IS_E2(sc))
   elink_update_pfc_bmac2(params, vars, bmac_loopback);
  else
   elink_update_pfc_bmac1(params, vars);

  val = 0;
  if ((params->feature_config_flags &
       ELINK_FEATURE_CONFIG_PFC_ENABLED) ||
      (vars->flow_ctrl & ELINK_FLOW_CTRL_TX))
   val = 1;
  REG_WR(sc, NIG_REG_BMAC0_PAUSE_OUT_EN + params->port*4, val);
 }
 return ELINK_STATUS_OK;
}
