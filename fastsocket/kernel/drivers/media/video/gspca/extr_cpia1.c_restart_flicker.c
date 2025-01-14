
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ flickerMode; int coarseJump; int disabled; } ;
struct TYPE_4__ {int coarseExpLo; int coarseExpHi; } ;
struct TYPE_6__ {TYPE_2__ flickerControl; TYPE_1__ exposure; } ;
struct sd {TYPE_3__ params; int cam_exposure; } ;
struct gspca_dev {int dummy; } ;


 int FIRMWARE_VERSION (int,int) ;
 int ROUND_UP_EXP_FOR_FLICKER ;
 int atomic_read (int *) ;
 int set_flicker (struct gspca_dev*,int,int) ;

__attribute__((used)) static void restart_flicker(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int cam_exposure, old_exp;

 if (!FIRMWARE_VERSION(1, 2))
  return;

 cam_exposure = atomic_read(&sd->cam_exposure);

 if (sd->params.flickerControl.flickerMode == 0 ||
     cam_exposure == 0)
  return;

 old_exp = sd->params.exposure.coarseExpLo +
    sd->params.exposure.coarseExpHi*256;




 cam_exposure %= sd->params.flickerControl.coarseJump;
 if (!sd->params.flickerControl.disabled &&
     cam_exposure <= sd->params.flickerControl.coarseJump - 3) {

  sd->params.flickerControl.disabled = 1;
 }

 if (sd->params.flickerControl.disabled &&
     old_exp > sd->params.flickerControl.coarseJump +
        ROUND_UP_EXP_FOR_FLICKER) {


  set_flicker(gspca_dev, 1, 1);
 }
}
