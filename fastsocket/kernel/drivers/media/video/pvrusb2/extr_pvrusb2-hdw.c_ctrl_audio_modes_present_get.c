
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int rxsubchans; } ;
struct pvr2_hdw {TYPE_1__ tuner_signal_info; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 unsigned int V4L2_TUNER_SUB_LANG1 ;
 unsigned int V4L2_TUNER_SUB_LANG2 ;
 unsigned int V4L2_TUNER_SUB_MONO ;
 unsigned int V4L2_TUNER_SUB_STEREO ;
 int pvr2_hdw_status_poll (struct pvr2_hdw*) ;

__attribute__((used)) static int ctrl_audio_modes_present_get(struct pvr2_ctrl *cptr,int *vp)
{
 int val = 0;
 unsigned int subchan;
 struct pvr2_hdw *hdw = cptr->hdw;
 pvr2_hdw_status_poll(hdw);
 subchan = hdw->tuner_signal_info.rxsubchans;
 if (subchan & V4L2_TUNER_SUB_MONO) {
  val |= (1 << V4L2_TUNER_MODE_MONO);
 }
 if (subchan & V4L2_TUNER_SUB_STEREO) {
  val |= (1 << V4L2_TUNER_MODE_STEREO);
 }
 if (subchan & V4L2_TUNER_SUB_LANG1) {
  val |= (1 << V4L2_TUNER_MODE_LANG1);
 }
 if (subchan & V4L2_TUNER_SUB_LANG2) {
  val |= (1 << V4L2_TUNER_MODE_LANG2);
 }
 *vp = val;
 return 0;
}
