
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_4__ {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct sd {void* hflip; void* autogain; void* autoexpo; void* auto_white_bal; void* vflip; void* gain; void* expo; void* blue_bal; void* red_bal; TYPE_2__ gspca_dev; } ;


 int BLUE_GAIN_DEFAULT ;
 int EXPOSURE_DEFAULT ;
 int GAIN_DEFAULT ;
 int RED_GAIN_DEFAULT ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_VFLIP ;
 int V4L2_EXPOSURE_AUTO ;
 int ov9650_ctrl_ops ;
 int pr_err (char*) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int,int ,int ) ;

int ov9650_init_controls(struct sd *sd)
{
 struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

 sd->gspca_dev.vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 9);

 sd->auto_white_bal = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops,
            V4L2_CID_AUTO_WHITE_BALANCE,
            0, 1, 1, 1);
 sd->red_bal = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops,
     V4L2_CID_RED_BALANCE, 0, 255, 1,
     RED_GAIN_DEFAULT);
 sd->blue_bal = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops,
     V4L2_CID_BLUE_BALANCE, 0, 255, 1,
     BLUE_GAIN_DEFAULT);

 sd->autoexpo = v4l2_ctrl_new_std_menu(hdl, &ov9650_ctrl_ops,
     V4L2_CID_EXPOSURE_AUTO, 1, 0, V4L2_EXPOSURE_AUTO);
 sd->expo = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops, V4L2_CID_EXPOSURE,
     0, 0x1ff, 4, EXPOSURE_DEFAULT);

 sd->autogain = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops,
      V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 sd->gain = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops, V4L2_CID_GAIN, 0,
         0x3ff, 1, GAIN_DEFAULT);

 sd->hflip = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops, V4L2_CID_HFLIP,
          0, 1, 1, 0);
 sd->vflip = v4l2_ctrl_new_std(hdl, &ov9650_ctrl_ops, V4L2_CID_VFLIP,
          0, 1, 1, 0);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_auto_cluster(3, &sd->auto_white_bal, 0, 0);
 v4l2_ctrl_auto_cluster(2, &sd->autoexpo, 0, 0);
 v4l2_ctrl_auto_cluster(2, &sd->autogain, 0, 0);
 v4l2_ctrl_cluster(2, &sd->hflip);

 return 0;
}
