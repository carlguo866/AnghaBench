
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_10__ {scalar_t__ i2c_defer_count; scalar_t__ i2c_nack_count; } ;
struct TYPE_12__ {int mst_state; } ;
struct intel_dp {int is_mst; int reset_link_params; TYPE_4__ aux; int max_link_rate; int max_link_lane_count; TYPE_6__ mst_mgr; int * dsc_dpcd; int compliance; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int connection_mutex; } ;
struct TYPE_9__ {TYPE_2__ mode_config; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_7__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; int dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_11__ {scalar_t__ detect_edid; } ;


 int DRM_DEBUG_KMS (char*,int,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int WARN_ON (int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_6__*,int) ;
 int drm_modeset_is_locked (int *) ;
 int edp_detect (struct intel_dp*) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 scalar_t__ intel_digital_port_connected (struct intel_encoder*) ;
 int intel_display_power_flush_work (struct drm_i915_private*) ;
 int intel_dp_check_service_irq (struct intel_dp*) ;
 int intel_dp_configure_mst (struct intel_dp*) ;
 int intel_dp_detect_dpcd (struct intel_dp*) ;
 int intel_dp_get_dsc_sink_cap (struct intel_dp*) ;
 scalar_t__ intel_dp_is_edp (struct intel_dp*) ;
 int intel_dp_max_common_lane_count (struct intel_dp*) ;
 int intel_dp_max_common_rate (struct intel_dp*) ;
 int intel_dp_print_rates (struct intel_dp*) ;
 int intel_dp_retrain_link (struct intel_encoder*,struct drm_modeset_acquire_ctx*) ;
 int intel_dp_set_edid (struct intel_dp*) ;
 int intel_dp_unset_edid (struct intel_dp*) ;
 int memset (int *,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_5__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int
intel_dp_detect(struct drm_connector *connector,
  struct drm_modeset_acquire_ctx *ctx,
  bool force)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_dp *intel_dp = intel_attached_dp(connector);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 struct intel_encoder *encoder = &dig_port->base;
 enum drm_connector_status status;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);
 WARN_ON(!drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));


 if (intel_dp_is_edp(intel_dp))
  status = edp_detect(intel_dp);
 else if (intel_digital_port_connected(encoder))
  status = intel_dp_detect_dpcd(intel_dp);
 else
  status = connector_status_disconnected;

 if (status == connector_status_disconnected) {
  memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
  memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));

  if (intel_dp->is_mst) {
   DRM_DEBUG_KMS("MST device may have disappeared %d vs %d\n",
          intel_dp->is_mst,
          intel_dp->mst_mgr.mst_state);
   intel_dp->is_mst = 0;
   drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
       intel_dp->is_mst);
  }

  goto out;
 }

 if (intel_dp->reset_link_params) {

  intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);


  intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);

  intel_dp->reset_link_params = 0;
 }

 intel_dp_print_rates(intel_dp);


 if (INTEL_GEN(dev_priv) >= 11)
  intel_dp_get_dsc_sink_cap(intel_dp);

 intel_dp_configure_mst(intel_dp);

 if (intel_dp->is_mst) {





  status = connector_status_disconnected;
  goto out;
 }





 if (!intel_dp_is_edp(intel_dp)) {
  int ret;

  ret = intel_dp_retrain_link(encoder, ctx);
  if (ret)
   return ret;
 }






 intel_dp->aux.i2c_nack_count = 0;
 intel_dp->aux.i2c_defer_count = 0;

 intel_dp_set_edid(intel_dp);
 if (intel_dp_is_edp(intel_dp) ||
     to_intel_connector(connector)->detect_edid)
  status = connector_status_connected;

 intel_dp_check_service_irq(intel_dp);

out:
 if (status != connector_status_connected && !intel_dp->is_mst)
  intel_dp_unset_edid(intel_dp);





 intel_display_power_flush_work(dev_priv);

 return status;
}
