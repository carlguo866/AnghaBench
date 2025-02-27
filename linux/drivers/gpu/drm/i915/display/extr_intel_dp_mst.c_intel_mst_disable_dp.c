
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {int mst_mgr; int active_mst_links; } ;
struct intel_digital_port {struct intel_dp dp; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct intel_connector {int port; } ;
struct drm_connector_state {int connector; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*,int) ;
 int drm_dp_mst_reset_vcpi_slots (int *,int ) ;
 int drm_dp_update_payload_part1 (int *) ;
 struct intel_dp_mst_encoder* enc_to_mst (int *) ;
 int intel_audio_codec_disable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void intel_mst_disable_dp(struct intel_encoder *encoder,
     const struct intel_crtc_state *old_crtc_state,
     const struct drm_connector_state *old_conn_state)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 struct intel_connector *connector =
  to_intel_connector(old_conn_state->connector);
 int ret;

 DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);

 drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);

 ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
 if (ret) {
  DRM_ERROR("failed to update payload %d\n", ret);
 }
 if (old_crtc_state->has_audio)
  intel_audio_codec_disable(encoder,
       old_crtc_state, old_conn_state);
}
