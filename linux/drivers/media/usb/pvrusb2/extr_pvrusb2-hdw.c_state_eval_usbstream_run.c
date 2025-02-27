
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {int state_usbstream_run; scalar_t__ pathway_state; int state_encoder_ok; int state_encoder_runok; TYPE_1__* hdw_desc; scalar_t__ state_encoder_run; scalar_t__ state_pathway_ok; scalar_t__ state_pipeline_pause; scalar_t__ state_pipeline_req; } ;
struct TYPE_2__ {scalar_t__ digital_control_scheme; scalar_t__ flag_digital_requires_cx23416; } ;


 scalar_t__ PVR2_DIGITAL_SCHEME_ONAIR ;
 scalar_t__ PVR2_PATHWAY_ANALOG ;
 scalar_t__ PVR2_PATHWAY_DIGITAL ;
 scalar_t__ pvr2_hdw_cmd_usbstream (struct pvr2_hdw*,int) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int state_eval_usbstream_run(struct pvr2_hdw *hdw)
{
 if (hdw->state_usbstream_run) {
  int fl = !0;
  if (hdw->pathway_state == PVR2_PATHWAY_ANALOG) {
   fl = (hdw->state_encoder_ok &&
         hdw->state_encoder_run);
  } else if ((hdw->pathway_state == PVR2_PATHWAY_DIGITAL) &&
      (hdw->hdw_desc->flag_digital_requires_cx23416)) {
   fl = hdw->state_encoder_ok;
  }
  if (fl &&
      hdw->state_pipeline_req &&
      !hdw->state_pipeline_pause &&
      hdw->state_pathway_ok) {
   return 0;
  }
  pvr2_hdw_cmd_usbstream(hdw,0);
  hdw->state_usbstream_run = 0;
 } else {
  if (!hdw->state_pipeline_req ||
      hdw->state_pipeline_pause ||
      !hdw->state_pathway_ok) return 0;
  if (hdw->pathway_state == PVR2_PATHWAY_ANALOG) {
   if (!hdw->state_encoder_ok ||
       !hdw->state_encoder_run) return 0;
  } else if ((hdw->pathway_state == PVR2_PATHWAY_DIGITAL) &&
      (hdw->hdw_desc->flag_digital_requires_cx23416)) {
   if (!hdw->state_encoder_ok) return 0;
   if (hdw->state_encoder_run) return 0;
   if (hdw->hdw_desc->digital_control_scheme ==
       PVR2_DIGITAL_SCHEME_ONAIR) {





    if (!hdw->state_encoder_runok) return 0;
   }
  }
  if (pvr2_hdw_cmd_usbstream(hdw,!0) < 0) return 0;
  hdw->state_usbstream_run = !0;
 }
 trace_stbit("state_usbstream_run",hdw->state_usbstream_run);
 return !0;
}
