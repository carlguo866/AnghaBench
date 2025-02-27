
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {scalar_t__ left; scalar_t__ top; } ;
struct v4l2_subdev_selection {int which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_subdev {int dummy; } ;
struct smiapp_sensor {struct smiapp_subdev* binner; } ;


 int SMIAPP_PADS ;
 int V4L2_SEL_TGT_COMPOSE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int smiapp_get_crop_compose (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_rect**,struct v4l2_rect**,int ) ;
 int smiapp_propagate (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int smiapp_set_compose_binner (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*,struct v4l2_rect**,struct v4l2_rect*) ;
 int smiapp_set_compose_scaler (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*,struct v4l2_rect**,struct v4l2_rect*) ;
 int smiapp_update_mode (struct smiapp_sensor*) ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;
 struct smiapp_subdev* to_smiapp_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int smiapp_set_compose(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_selection *sel)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 struct smiapp_subdev *ssd = to_smiapp_subdev(subdev);
 struct v4l2_rect *comp, *crops[SMIAPP_PADS];

 smiapp_get_crop_compose(subdev, cfg, crops, &comp, sel->which);

 sel->r.top = 0;
 sel->r.left = 0;

 if (ssd == sensor->binner)
  smiapp_set_compose_binner(subdev, cfg, sel, crops, comp);
 else
  smiapp_set_compose_scaler(subdev, cfg, sel, crops, comp);

 *comp = sel->r;
 smiapp_propagate(subdev, cfg, sel->which, V4L2_SEL_TGT_COMPOSE);

 if (sel->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return smiapp_update_mode(sensor);

 return 0;
}
