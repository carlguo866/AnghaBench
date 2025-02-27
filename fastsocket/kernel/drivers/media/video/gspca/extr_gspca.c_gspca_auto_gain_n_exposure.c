
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gspca_dev {int ctrl_dis; TYPE_1__* sd_desc; } ;
struct TYPE_4__ {scalar_t__ id; int default_value; int minimum; int maximum; } ;
struct ctrl {int (* set ) (struct gspca_dev*,int) ;TYPE_2__ qctrl; scalar_t__ (* get ) (struct gspca_dev*,int*) ;} ;
struct TYPE_3__ {int nctrls; struct ctrl* ctrls; } ;


 int D_ERR ;
 int D_FRAM ;
 int PDEBUG (int ,char*,...) ;
 scalar_t__ V4L2_CID_AUTOGAIN ;
 scalar_t__ V4L2_CID_EXPOSURE ;
 scalar_t__ V4L2_CID_GAIN ;
 int abs (int) ;
 scalar_t__ stub1 (struct gspca_dev*,int*) ;
 scalar_t__ stub2 (struct gspca_dev*,int*) ;
 scalar_t__ stub3 (struct gspca_dev*,int*) ;
 int stub4 (struct gspca_dev*,int) ;
 int stub5 (struct gspca_dev*,int) ;

int gspca_auto_gain_n_exposure(struct gspca_dev *gspca_dev, int avg_lum,
 int desired_avg_lum, int deadzone, int gain_knee, int exposure_knee)
{
 int i, steps, gain, orig_gain, exposure, orig_exposure, autogain;
 const struct ctrl *gain_ctrl = ((void*)0);
 const struct ctrl *exposure_ctrl = ((void*)0);
 const struct ctrl *autogain_ctrl = ((void*)0);
 int retval = 0;

 for (i = 0; i < gspca_dev->sd_desc->nctrls; i++) {
  if (gspca_dev->ctrl_dis & (1 << i))
   continue;
  if (gspca_dev->sd_desc->ctrls[i].qctrl.id == V4L2_CID_GAIN)
   gain_ctrl = &gspca_dev->sd_desc->ctrls[i];
  if (gspca_dev->sd_desc->ctrls[i].qctrl.id == V4L2_CID_EXPOSURE)
   exposure_ctrl = &gspca_dev->sd_desc->ctrls[i];
  if (gspca_dev->sd_desc->ctrls[i].qctrl.id == V4L2_CID_AUTOGAIN)
   autogain_ctrl = &gspca_dev->sd_desc->ctrls[i];
 }
 if (!gain_ctrl || !exposure_ctrl || !autogain_ctrl) {
  PDEBUG(D_ERR, "Error: gspca_auto_gain_n_exposure called "
   "on cam without (auto)gain/exposure");
  return 0;
 }

 if (gain_ctrl->get(gspca_dev, &gain) ||
   exposure_ctrl->get(gspca_dev, &exposure) ||
   autogain_ctrl->get(gspca_dev, &autogain) || !autogain)
  return 0;

 orig_gain = gain;
 orig_exposure = exposure;



 steps = abs(desired_avg_lum - avg_lum) / deadzone;

 PDEBUG(D_FRAM, "autogain: lum: %d, desired: %d, steps: %d",
  avg_lum, desired_avg_lum, steps);

 for (i = 0; i < steps; i++) {
  if (avg_lum > desired_avg_lum) {
   if (gain > gain_knee)
    gain--;
   else if (exposure > exposure_knee)
    exposure--;
   else if (gain > gain_ctrl->qctrl.default_value)
    gain--;
   else if (exposure > exposure_ctrl->qctrl.minimum)
    exposure--;
   else if (gain > gain_ctrl->qctrl.minimum)
    gain--;
   else
    break;
  } else {
   if (gain < gain_ctrl->qctrl.default_value)
    gain++;
   else if (exposure < exposure_knee)
    exposure++;
   else if (gain < gain_knee)
    gain++;
   else if (exposure < exposure_ctrl->qctrl.maximum)
    exposure++;
   else if (gain < gain_ctrl->qctrl.maximum)
    gain++;
   else
    break;
  }
 }

 if (gain != orig_gain) {
  gain_ctrl->set(gspca_dev, gain);
  retval = 1;
 }
 if (exposure != orig_exposure) {
  exposure_ctrl->set(gspca_dev, exposure);
  retval = 1;
 }

 return retval;
}
