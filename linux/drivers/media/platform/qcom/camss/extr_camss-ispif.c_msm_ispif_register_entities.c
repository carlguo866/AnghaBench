
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_2__ entity; int name; int flags; int * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int flags; } ;
struct ispif_device {int line_num; TYPE_1__* line; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct v4l2_subdev subdev; struct media_pad* pads; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_ENT_F_IO_V4L ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 char* MSM_ISPIF_NAME ;
 int MSM_ISPIF_PADS_NUM ;
 size_t MSM_ISPIF_PAD_SINK ;
 size_t MSM_ISPIF_PAD_SRC ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (struct device*,char*,int) ;
 int ispif_init_formats (struct v4l2_subdev*,int *) ;
 int ispif_media_ops ;
 int ispif_v4l2_internal_ops ;
 int ispif_v4l2_ops ;
 int media_entity_cleanup (TYPE_2__*) ;
 int media_entity_pads_init (TYPE_2__*,int ,struct media_pad*) ;
 int snprintf (int ,int ,char*,char*,int) ;
 struct device* to_device (struct ispif_device*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,TYPE_1__*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int msm_ispif_register_entities(struct ispif_device *ispif,
    struct v4l2_device *v4l2_dev)
{
 struct device *dev = to_device(ispif);
 int ret;
 int i;

 for (i = 0; i < ispif->line_num; i++) {
  struct v4l2_subdev *sd = &ispif->line[i].subdev;
  struct media_pad *pads = ispif->line[i].pads;

  v4l2_subdev_init(sd, &ispif_v4l2_ops);
  sd->internal_ops = &ispif_v4l2_internal_ops;
  sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
  snprintf(sd->name, ARRAY_SIZE(sd->name), "%s%d",
    MSM_ISPIF_NAME, i);
  v4l2_set_subdevdata(sd, &ispif->line[i]);

  ret = ispif_init_formats(sd, ((void*)0));
  if (ret < 0) {
   dev_err(dev, "Failed to init format: %d\n", ret);
   goto error;
  }

  pads[MSM_ISPIF_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
  pads[MSM_ISPIF_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

  sd->entity.function = MEDIA_ENT_F_IO_V4L;
  sd->entity.ops = &ispif_media_ops;
  ret = media_entity_pads_init(&sd->entity, MSM_ISPIF_PADS_NUM,
          pads);
  if (ret < 0) {
   dev_err(dev, "Failed to init media entity: %d\n", ret);
   goto error;
  }

  ret = v4l2_device_register_subdev(v4l2_dev, sd);
  if (ret < 0) {
   dev_err(dev, "Failed to register subdev: %d\n", ret);
   media_entity_cleanup(&sd->entity);
   goto error;
  }
 }

 return 0;

error:
 for (i--; i >= 0; i--) {
  struct v4l2_subdev *sd = &ispif->line[i].subdev;

  v4l2_device_unregister_subdev(sd);
  media_entity_cleanup(&sd->entity);
 }

 return ret;
}
