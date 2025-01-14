
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edp_power_seq {int dummy; } ;
struct edp_link_params {int lanes; int preemphasis; int vswing; scalar_t__ rate; } ;
struct TYPE_2__ {int bpp; int lanes; int vswing; int preemphasis; int rate; struct edp_power_seq pps; scalar_t__ support; } ;
struct drm_i915_private {TYPE_1__ edp; int dev; } ;
struct bdb_header {int dummy; } ;
struct bdb_edp {int color_depth; struct edp_link_params* link_params; struct edp_power_seq* power_seqs; } ;


 int BDB_EDP ;
 int DP_LINK_BW_1_62 ;
 int DP_LINK_BW_2_7 ;
 int DP_TRAIN_PRE_EMPHASIS_0 ;
 int DP_TRAIN_PRE_EMPHASIS_3_5 ;
 int DP_TRAIN_PRE_EMPHASIS_6 ;
 int DP_TRAIN_PRE_EMPHASIS_9_5 ;
 int DP_TRAIN_VOLTAGE_SWING_1200 ;
 int DP_TRAIN_VOLTAGE_SWING_400 ;
 int DP_TRAIN_VOLTAGE_SWING_600 ;
 int DP_TRAIN_VOLTAGE_SWING_800 ;
 int DRM_DEBUG_KMS (char*) ;



 scalar_t__ SUPPORTS_EDP (int ) ;
 struct bdb_edp* find_section (struct bdb_header*,int ) ;
 int panel_type ;

__attribute__((used)) static void
parse_edp(struct drm_i915_private *dev_priv, struct bdb_header *bdb)
{
 struct bdb_edp *edp;
 struct edp_power_seq *edp_pps;
 struct edp_link_params *edp_link_params;

 edp = find_section(bdb, BDB_EDP);
 if (!edp) {
  if (SUPPORTS_EDP(dev_priv->dev) && dev_priv->edp.support)
   DRM_DEBUG_KMS("No eDP BDB found but eDP panel supported.\n");
  return;
 }

 switch ((edp->color_depth >> (panel_type * 2)) & 3) {
 case 130:
  dev_priv->edp.bpp = 18;
  break;
 case 129:
  dev_priv->edp.bpp = 24;
  break;
 case 128:
  dev_priv->edp.bpp = 30;
  break;
 }


 edp_pps = &edp->power_seqs[panel_type];
 edp_link_params = &edp->link_params[panel_type];

 dev_priv->edp.pps = *edp_pps;

 dev_priv->edp.rate = edp_link_params->rate ? DP_LINK_BW_2_7 :
  DP_LINK_BW_1_62;
 switch (edp_link_params->lanes) {
 case 0:
  dev_priv->edp.lanes = 1;
  break;
 case 1:
  dev_priv->edp.lanes = 2;
  break;
 case 3:
 default:
  dev_priv->edp.lanes = 4;
  break;
 }
 switch (edp_link_params->preemphasis) {
 case 0:
  dev_priv->edp.preemphasis = DP_TRAIN_PRE_EMPHASIS_0;
  break;
 case 1:
  dev_priv->edp.preemphasis = DP_TRAIN_PRE_EMPHASIS_3_5;
  break;
 case 2:
  dev_priv->edp.preemphasis = DP_TRAIN_PRE_EMPHASIS_6;
  break;
 case 3:
  dev_priv->edp.preemphasis = DP_TRAIN_PRE_EMPHASIS_9_5;
  break;
 }
 switch (edp_link_params->vswing) {
 case 0:
  dev_priv->edp.vswing = DP_TRAIN_VOLTAGE_SWING_400;
  break;
 case 1:
  dev_priv->edp.vswing = DP_TRAIN_VOLTAGE_SWING_600;
  break;
 case 2:
  dev_priv->edp.vswing = DP_TRAIN_VOLTAGE_SWING_800;
  break;
 case 3:
  dev_priv->edp.vswing = DP_TRAIN_VOLTAGE_SWING_1200;
  break;
 }
}
