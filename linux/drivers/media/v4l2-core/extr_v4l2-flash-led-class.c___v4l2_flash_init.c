
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int ctrl_handler; struct fwnode_handle* fwnode; int name; int flags; int * internal_ops; struct device* dev; } ;
struct v4l2_flash_ops {int dummy; } ;
struct v4l2_flash_config {int dev_name; } ;
struct v4l2_flash {struct v4l2_flash_ops const* ops; struct led_classdev* iled_cdev; struct led_classdev_flash* fled_cdev; struct v4l2_subdev sd; } ;
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct v4l2_flash* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_FLASH ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 struct fwnode_handle* dev_fwnode (struct device*) ;
 struct v4l2_flash* devm_kzalloc (struct device*,int,int ) ;
 int fwnode_handle_get (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int ,int *) ;
 int strscpy (int ,int ,int) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_flash_init_controls (struct v4l2_flash*,struct v4l2_flash_config*) ;
 int v4l2_flash_subdev_internal_ops ;
 int v4l2_flash_subdev_ops ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static struct v4l2_flash *__v4l2_flash_init(
 struct device *dev, struct fwnode_handle *fwn,
 struct led_classdev_flash *fled_cdev, struct led_classdev *iled_cdev,
 const struct v4l2_flash_ops *ops, struct v4l2_flash_config *config)
{
 struct v4l2_flash *v4l2_flash;
 struct v4l2_subdev *sd;
 int ret;

 if (!config)
  return ERR_PTR(-EINVAL);

 v4l2_flash = devm_kzalloc(dev, sizeof(*v4l2_flash), GFP_KERNEL);
 if (!v4l2_flash)
  return ERR_PTR(-ENOMEM);

 sd = &v4l2_flash->sd;
 v4l2_flash->fled_cdev = fled_cdev;
 v4l2_flash->iled_cdev = iled_cdev;
 v4l2_flash->ops = ops;
 sd->dev = dev;
 sd->fwnode = fwn ? fwn : dev_fwnode(dev);
 v4l2_subdev_init(sd, &v4l2_flash_subdev_ops);
 sd->internal_ops = &v4l2_flash_subdev_internal_ops;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 strscpy(sd->name, config->dev_name, sizeof(sd->name));

 ret = media_entity_pads_init(&sd->entity, 0, ((void*)0));
 if (ret < 0)
  return ERR_PTR(ret);

 sd->entity.function = MEDIA_ENT_F_FLASH;

 ret = v4l2_flash_init_controls(v4l2_flash, config);
 if (ret < 0)
  goto err_init_controls;

 fwnode_handle_get(sd->fwnode);

 ret = v4l2_async_register_subdev(sd);
 if (ret < 0)
  goto err_async_register_sd;

 return v4l2_flash;

err_async_register_sd:
 fwnode_handle_put(sd->fwnode);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
err_init_controls:
 media_entity_cleanup(&sd->entity);

 return ERR_PTR(ret);
}
