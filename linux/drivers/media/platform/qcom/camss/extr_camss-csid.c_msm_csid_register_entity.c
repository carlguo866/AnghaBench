
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * ops; int function; } ;
struct v4l2_subdev {int flags; TYPE_5__ entity; TYPE_2__* ctrl_handler; int name; int * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int flags; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct csid_device {TYPE_2__ ctrls; struct v4l2_subdev subdev; int testgen_mode; int id; TYPE_1__* camss; struct media_pad* pads; } ;
struct TYPE_7__ {struct device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_ENT_F_IO_V4L ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 char* MSM_CSID_NAME ;
 int MSM_CSID_PADS_NUM ;
 size_t MSM_CSID_PAD_SINK ;
 size_t MSM_CSID_PAD_SRC ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int csid_ctrl_ops ;
 int csid_init_formats (struct v4l2_subdev*,int *) ;
 int csid_media_ops ;
 int csid_test_pattern_menu ;
 int csid_v4l2_internal_ops ;
 int csid_v4l2_ops ;
 int dev_err (struct device*,char*,int) ;
 int media_entity_cleanup (TYPE_5__*) ;
 int media_entity_pads_init (TYPE_5__*,int ,struct media_pad*) ;
 int snprintf (int ,int ,char*,char*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_2__*,int *,int ,int ,int ,int ,int ) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct csid_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int msm_csid_register_entity(struct csid_device *csid,
        struct v4l2_device *v4l2_dev)
{
 struct v4l2_subdev *sd = &csid->subdev;
 struct media_pad *pads = csid->pads;
 struct device *dev = csid->camss->dev;
 int ret;

 v4l2_subdev_init(sd, &csid_v4l2_ops);
 sd->internal_ops = &csid_v4l2_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
       V4L2_SUBDEV_FL_HAS_EVENTS;
 snprintf(sd->name, ARRAY_SIZE(sd->name), "%s%d",
   MSM_CSID_NAME, csid->id);
 v4l2_set_subdevdata(sd, csid);

 ret = v4l2_ctrl_handler_init(&csid->ctrls, 1);
 if (ret < 0) {
  dev_err(dev, "Failed to init ctrl handler: %d\n", ret);
  return ret;
 }

 csid->testgen_mode = v4l2_ctrl_new_std_menu_items(&csid->ctrls,
    &csid_ctrl_ops, V4L2_CID_TEST_PATTERN,
    ARRAY_SIZE(csid_test_pattern_menu) - 1, 0, 0,
    csid_test_pattern_menu);

 if (csid->ctrls.error) {
  dev_err(dev, "Failed to init ctrl: %d\n", csid->ctrls.error);
  ret = csid->ctrls.error;
  goto free_ctrl;
 }

 csid->subdev.ctrl_handler = &csid->ctrls;

 ret = csid_init_formats(sd, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "Failed to init format: %d\n", ret);
  goto free_ctrl;
 }

 pads[MSM_CSID_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 pads[MSM_CSID_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

 sd->entity.function = MEDIA_ENT_F_IO_V4L;
 sd->entity.ops = &csid_media_ops;
 ret = media_entity_pads_init(&sd->entity, MSM_CSID_PADS_NUM, pads);
 if (ret < 0) {
  dev_err(dev, "Failed to init media entity: %d\n", ret);
  goto free_ctrl;
 }

 ret = v4l2_device_register_subdev(v4l2_dev, sd);
 if (ret < 0) {
  dev_err(dev, "Failed to register subdev: %d\n", ret);
  goto media_cleanup;
 }

 return 0;

media_cleanup:
 media_entity_cleanup(&sd->entity);
free_ctrl:
 v4l2_ctrl_handler_free(&csid->ctrls);

 return ret;
}
