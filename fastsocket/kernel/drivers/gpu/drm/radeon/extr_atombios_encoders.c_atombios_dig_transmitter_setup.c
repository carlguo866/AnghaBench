
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_21__ {int ucPhyClkSrcId; int ucCoherentMode; int ucHPDSel; } ;
struct TYPE_22__ {int ucAction; int ucLaneNum; int ucConnObjId; int ucDigEncoderSel; int ucDPLaneSet; TYPE_14__ asConfig; int ucDigMode; int ucPhyId; void* usSymClock; } ;
struct TYPE_18__ {int ucLinkSel; int ucEncoderSel; int ucRefClkSource; int ucTransmitterSel; int fCoherentMode; int fDualLinkConnector; } ;
struct TYPE_17__ {int ucLaneSel; int ucLaneSet; } ;
struct TYPE_19__ {int ucAction; int ucLaneNum; TYPE_11__ acConfig; void* usPixelClock; TYPE_10__ asMode; void* usInitInfo; } ;
struct TYPE_31__ {int ucLinkSel; int ucEncoderSel; int ucRefClkSource; int ucTransmitterSel; int fCoherentMode; int fDualLinkConnector; } ;
struct TYPE_30__ {int ucLaneSel; int ucLaneSet; } ;
struct TYPE_32__ {int ucAction; int ucLaneNum; TYPE_8__ acConfig; void* usPixelClock; TYPE_7__ asMode; void* usInitInfo; } ;
struct TYPE_28__ {int ucEncoderSel; int ucLinkSel; int ucTransmitterSel; int fCoherentMode; int fDPConnector; int fDualLinkConnector; } ;
struct TYPE_27__ {int ucLaneSel; int ucLaneSet; } ;
struct TYPE_29__ {int ucAction; TYPE_5__ acConfig; void* usPixelClock; TYPE_4__ asMode; void* usInitInfo; } ;
struct TYPE_25__ {int ucLaneSel; int ucLaneSet; } ;
struct TYPE_26__ {int ucAction; int ucConfig; void* usPixelClock; TYPE_2__ asMode; void* usInitInfo; } ;
union dig_transmitter_control {TYPE_15__ v5; TYPE_12__ v4; TYPE_9__ v3; TYPE_6__ v2; TYPE_3__ v1; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct radeon_encoder_atom_dig {int dig_encoder; int coherent_mode; int linkb; } ;
struct radeon_encoder {int encoder_id; int pixel_clock; int devices; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_23__ {int atom_context; } ;
struct TYPE_20__ {int dp_extclk; } ;
struct radeon_device {int flags; TYPE_16__ mode_info; TYPE_13__ clock; } ;
struct radeon_crtc {int pll_id; } ;
struct radeon_connector_atom_dig {int dp_clock; int dp_lane_count; int igp_lane_info; } ;
struct TYPE_24__ {int hpd; } ;
struct radeon_connector {int connector_object_id; TYPE_1__ hpd; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {scalar_t__ crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
typedef int args ;


 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_PHY_ID_UNIPHYA ;
 int ATOM_PHY_ID_UNIPHYB ;
 int ATOM_PHY_ID_UNIPHYC ;
 int ATOM_PHY_ID_UNIPHYD ;
 int ATOM_PHY_ID_UNIPHYE ;
 int ATOM_PHY_ID_UNIPHYF ;
 int ATOM_TRANSMITTER_ACTION_INIT ;
 int ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH ;
 int ATOM_TRANSMITTER_CONFIG_8LANE_LINK ;
 int ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL ;
 int ATOM_TRANSMITTER_CONFIG_COHERENT ;
 int ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER ;
 int ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER ;
 int ATOM_TRANSMITTER_CONFIG_LANE_0_3 ;
 int ATOM_TRANSMITTER_CONFIG_LANE_0_7 ;
 int ATOM_TRANSMITTER_CONFIG_LANE_12_15 ;
 int ATOM_TRANSMITTER_CONFIG_LANE_4_7 ;
 int ATOM_TRANSMITTER_CONFIG_LANE_8_11 ;
 int ATOM_TRANSMITTER_CONFIG_LANE_8_15 ;
 int ATOM_TRANSMITTER_CONFIG_LINKA ;
 int ATOM_TRANSMITTER_CONFIG_LINKB ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int DVOOutputControl ;
 scalar_t__ ENCODER_MODE_IS_DP (int ) ;





 int ENCODER_REFCLK_SRC_DCPLL ;
 void* ENCODER_REFCLK_SRC_EXTCLK ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int LVTMATransmitterControl ;
 int OBJECT_ID_MASK ;
 int OBJECT_ID_SHIFT ;
 int RADEON_HPD_NONE ;
 int RADEON_IS_IGP ;
 int UNIPHYTransmitterControl ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 int atombios_get_encoder_mode (struct drm_encoder*) ;
 void* cpu_to_le16 (int) ;
 int memset (union dig_transmitter_control*,int ,int) ;
 int radeon_dig_monitor_is_duallink (struct drm_encoder*,int) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder_init (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_crtc* to_radeon_crtc (scalar_t__) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void
atombios_dig_transmitter_setup(struct drm_encoder *encoder, int action, uint8_t lane_num, uint8_t lane_set)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 struct drm_connector *connector;
 union dig_transmitter_control args;
 int index = 0;
 uint8_t frev, crev;
 bool is_dp = 0;
 int pll_id = 0;
 int dp_clock = 0;
 int dp_lane_count = 0;
 int connector_object_id = 0;
 int igp_lane_info = 0;
 int dig_encoder = dig->dig_encoder;
 int hpd_id = RADEON_HPD_NONE;

 if (action == ATOM_TRANSMITTER_ACTION_INIT) {
  connector = radeon_get_connector_for_encoder_init(encoder);



  dig_encoder = 0;
 } else
  connector = radeon_get_connector_for_encoder(encoder);

 if (connector) {
  struct radeon_connector *radeon_connector = to_radeon_connector(connector);
  struct radeon_connector_atom_dig *dig_connector =
   radeon_connector->con_priv;

  hpd_id = radeon_connector->hpd.hpd;
  dp_clock = dig_connector->dp_clock;
  dp_lane_count = dig_connector->dp_lane_count;
  connector_object_id =
   (radeon_connector->connector_object_id & OBJECT_ID_MASK) >> OBJECT_ID_SHIFT;
  igp_lane_info = dig_connector->igp_lane_info;
 }

 if (encoder->crtc) {
  struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
  pll_id = radeon_crtc->pll_id;
 }


 if (dig_encoder == -1)
  return;

 if (ENCODER_MODE_IS_DP(atombios_get_encoder_mode(encoder)))
  is_dp = 1;

 memset(&args, 0, sizeof(args));

 switch (radeon_encoder->encoder_id) {
 case 132:
  index = GetIndexIntoMasterTable(COMMAND, DVOOutputControl);
  break;
 case 130:
 case 129:
 case 128:
  index = GetIndexIntoMasterTable(COMMAND, UNIPHYTransmitterControl);
  break;
 case 131:
  index = GetIndexIntoMasterTable(COMMAND, LVTMATransmitterControl);
  break;
 }

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return;

 switch (frev) {
 case 1:
  switch (crev) {
  case 1:
   args.v1.ucAction = action;
   if (action == ATOM_TRANSMITTER_ACTION_INIT) {
    args.v1.usInitInfo = cpu_to_le16(connector_object_id);
   } else if (action == ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH) {
    args.v1.asMode.ucLaneSel = lane_num;
    args.v1.asMode.ucLaneSet = lane_set;
   } else {
    if (is_dp)
     args.v1.usPixelClock = cpu_to_le16(dp_clock / 10);
    else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v1.usPixelClock = cpu_to_le16((radeon_encoder->pixel_clock / 2) / 10);
    else
     args.v1.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);
   }

   args.v1.ucConfig = ATOM_TRANSMITTER_CONFIG_CLKSRC_PPLL;

   if (dig_encoder)
    args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_DIG2_ENCODER;
   else
    args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_DIG1_ENCODER;

   if ((rdev->flags & RADEON_IS_IGP) &&
       (radeon_encoder->encoder_id == 130)) {
    if (is_dp ||
        !radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock)) {
     if (igp_lane_info & 0x1)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_0_3;
     else if (igp_lane_info & 0x2)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_4_7;
     else if (igp_lane_info & 0x4)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_8_11;
     else if (igp_lane_info & 0x8)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_12_15;
    } else {
     if (igp_lane_info & 0x3)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_0_7;
     else if (igp_lane_info & 0xc)
      args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LANE_8_15;
    }
   }

   if (dig->linkb)
    args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LINKB;
   else
    args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_LINKA;

   if (is_dp)
    args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_COHERENT;
   else if (radeon_encoder->devices & (ATOM_DEVICE_DFP_SUPPORT)) {
    if (dig->coherent_mode)
     args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_COHERENT;
    if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v1.ucConfig |= ATOM_TRANSMITTER_CONFIG_8LANE_LINK;
   }
   break;
  case 2:
   args.v2.ucAction = action;
   if (action == ATOM_TRANSMITTER_ACTION_INIT) {
    args.v2.usInitInfo = cpu_to_le16(connector_object_id);
   } else if (action == ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH) {
    args.v2.asMode.ucLaneSel = lane_num;
    args.v2.asMode.ucLaneSet = lane_set;
   } else {
    if (is_dp)
     args.v2.usPixelClock = cpu_to_le16(dp_clock / 10);
    else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v2.usPixelClock = cpu_to_le16((radeon_encoder->pixel_clock / 2) / 10);
    else
     args.v2.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);
   }

   args.v2.acConfig.ucEncoderSel = dig_encoder;
   if (dig->linkb)
    args.v2.acConfig.ucLinkSel = 1;

   switch (radeon_encoder->encoder_id) {
   case 130:
    args.v2.acConfig.ucTransmitterSel = 0;
    break;
   case 129:
    args.v2.acConfig.ucTransmitterSel = 1;
    break;
   case 128:
    args.v2.acConfig.ucTransmitterSel = 2;
    break;
   }

   if (is_dp) {
    args.v2.acConfig.fCoherentMode = 1;
    args.v2.acConfig.fDPConnector = 1;
   } else if (radeon_encoder->devices & (ATOM_DEVICE_DFP_SUPPORT)) {
    if (dig->coherent_mode)
     args.v2.acConfig.fCoherentMode = 1;
    if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v2.acConfig.fDualLinkConnector = 1;
   }
   break;
  case 3:
   args.v3.ucAction = action;
   if (action == ATOM_TRANSMITTER_ACTION_INIT) {
    args.v3.usInitInfo = cpu_to_le16(connector_object_id);
   } else if (action == ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH) {
    args.v3.asMode.ucLaneSel = lane_num;
    args.v3.asMode.ucLaneSet = lane_set;
   } else {
    if (is_dp)
     args.v3.usPixelClock = cpu_to_le16(dp_clock / 10);
    else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v3.usPixelClock = cpu_to_le16((radeon_encoder->pixel_clock / 2) / 10);
    else
     args.v3.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);
   }

   if (is_dp)
    args.v3.ucLaneNum = dp_lane_count;
   else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
    args.v3.ucLaneNum = 8;
   else
    args.v3.ucLaneNum = 4;

   if (dig->linkb)
    args.v3.acConfig.ucLinkSel = 1;
   if (dig_encoder & 1)
    args.v3.acConfig.ucEncoderSel = 1;






   if (is_dp && rdev->clock.dp_extclk)
    args.v3.acConfig.ucRefClkSource = 2;
   else
    args.v3.acConfig.ucRefClkSource = pll_id;

   switch (radeon_encoder->encoder_id) {
   case 130:
    args.v3.acConfig.ucTransmitterSel = 0;
    break;
   case 129:
    args.v3.acConfig.ucTransmitterSel = 1;
    break;
   case 128:
    args.v3.acConfig.ucTransmitterSel = 2;
    break;
   }

   if (is_dp)
    args.v3.acConfig.fCoherentMode = 1;
   else if (radeon_encoder->devices & (ATOM_DEVICE_DFP_SUPPORT)) {
    if (dig->coherent_mode)
     args.v3.acConfig.fCoherentMode = 1;
    if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v3.acConfig.fDualLinkConnector = 1;
   }
   break;
  case 4:
   args.v4.ucAction = action;
   if (action == ATOM_TRANSMITTER_ACTION_INIT) {
    args.v4.usInitInfo = cpu_to_le16(connector_object_id);
   } else if (action == ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH) {
    args.v4.asMode.ucLaneSel = lane_num;
    args.v4.asMode.ucLaneSet = lane_set;
   } else {
    if (is_dp)
     args.v4.usPixelClock = cpu_to_le16(dp_clock / 10);
    else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v4.usPixelClock = cpu_to_le16((radeon_encoder->pixel_clock / 2) / 10);
    else
     args.v4.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);
   }

   if (is_dp)
    args.v4.ucLaneNum = dp_lane_count;
   else if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
    args.v4.ucLaneNum = 8;
   else
    args.v4.ucLaneNum = 4;

   if (dig->linkb)
    args.v4.acConfig.ucLinkSel = 1;
   if (dig_encoder & 1)
    args.v4.acConfig.ucEncoderSel = 1;






   if (is_dp) {
    if (rdev->clock.dp_extclk)
     args.v4.acConfig.ucRefClkSource = ENCODER_REFCLK_SRC_EXTCLK;
    else
     args.v4.acConfig.ucRefClkSource = ENCODER_REFCLK_SRC_DCPLL;
   } else
    args.v4.acConfig.ucRefClkSource = pll_id;

   switch (radeon_encoder->encoder_id) {
   case 130:
    args.v4.acConfig.ucTransmitterSel = 0;
    break;
   case 129:
    args.v4.acConfig.ucTransmitterSel = 1;
    break;
   case 128:
    args.v4.acConfig.ucTransmitterSel = 2;
    break;
   }

   if (is_dp)
    args.v4.acConfig.fCoherentMode = 1;
   else if (radeon_encoder->devices & (ATOM_DEVICE_DFP_SUPPORT)) {
    if (dig->coherent_mode)
     args.v4.acConfig.fCoherentMode = 1;
    if (radeon_dig_monitor_is_duallink(encoder, radeon_encoder->pixel_clock))
     args.v4.acConfig.fDualLinkConnector = 1;
   }
   break;
  case 5:
   args.v5.ucAction = action;
   if (is_dp)
    args.v5.usSymClock = cpu_to_le16(dp_clock / 10);
   else
    args.v5.usSymClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);

   switch (radeon_encoder->encoder_id) {
   case 130:
    if (dig->linkb)
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYB;
    else
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYA;
    break;
   case 129:
    if (dig->linkb)
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYD;
    else
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYC;
    break;
   case 128:
    if (dig->linkb)
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYF;
    else
     args.v5.ucPhyId = ATOM_PHY_ID_UNIPHYE;
    break;
   }
   if (is_dp)
    args.v5.ucLaneNum = dp_lane_count;
   else if (radeon_encoder->pixel_clock > 165000)
    args.v5.ucLaneNum = 8;
   else
    args.v5.ucLaneNum = 4;
   args.v5.ucConnObjId = connector_object_id;
   args.v5.ucDigMode = atombios_get_encoder_mode(encoder);

   if (is_dp && rdev->clock.dp_extclk)
    args.v5.asConfig.ucPhyClkSrcId = ENCODER_REFCLK_SRC_EXTCLK;
   else
    args.v5.asConfig.ucPhyClkSrcId = pll_id;

   if (is_dp)
    args.v5.asConfig.ucCoherentMode = 1;
   else if (radeon_encoder->devices & (ATOM_DEVICE_DFP_SUPPORT)) {
    if (dig->coherent_mode)
     args.v5.asConfig.ucCoherentMode = 1;
   }
   if (hpd_id == RADEON_HPD_NONE)
    args.v5.asConfig.ucHPDSel = 0;
   else
    args.v5.asConfig.ucHPDSel = hpd_id + 1;
   args.v5.ucDigEncoderSel = 1 << dig_encoder;
   args.v5.ucDPLaneSet = lane_set;
   break;
  default:
   DRM_ERROR("Unknown table version %d, %d\n", frev, crev);
   break;
  }
  break;
 default:
  DRM_ERROR("Unknown table version %d, %d\n", frev, crev);
  break;
 }

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
