
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_flash_config {int dummy; } ;
struct led_classdev_flash {int dummy; } ;
struct max77693_sub_led {int v4l2_flash; struct led_classdev_flash fled_cdev; } ;
struct max77693_led_device {TYPE_1__* pdev; } ;
struct max77693_led_config_data {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int led_classdev_flash_register (struct device*,struct led_classdev_flash*) ;
 int led_classdev_flash_unregister (struct led_classdev_flash*) ;
 int max77693_init_v4l2_flash_config (struct max77693_sub_led*,struct max77693_led_config_data*,struct v4l2_flash_config*) ;
 int of_fwnode_handle (struct device_node*) ;
 struct max77693_led_device* sub_led_to_led (struct max77693_sub_led*) ;
 int v4l2_flash_init (struct device*,int ,struct led_classdev_flash*,int *,struct v4l2_flash_config*) ;
 int v4l2_flash_ops ;

__attribute__((used)) static int max77693_register_led(struct max77693_sub_led *sub_led,
     struct max77693_led_config_data *led_cfg,
     struct device_node *sub_node)
{
 struct max77693_led_device *led = sub_led_to_led(sub_led);
 struct led_classdev_flash *fled_cdev = &sub_led->fled_cdev;
 struct device *dev = &led->pdev->dev;
 struct v4l2_flash_config v4l2_sd_cfg = {};
 int ret;


 ret = led_classdev_flash_register(dev, fled_cdev);
 if (ret < 0)
  return ret;

 max77693_init_v4l2_flash_config(sub_led, led_cfg, &v4l2_sd_cfg);


 sub_led->v4l2_flash = v4l2_flash_init(dev, of_fwnode_handle(sub_node),
           fled_cdev, &v4l2_flash_ops,
           &v4l2_sd_cfg);
 if (IS_ERR(sub_led->v4l2_flash)) {
  ret = PTR_ERR(sub_led->v4l2_flash);
  goto err_v4l2_flash_init;
 }

 return 0;

err_v4l2_flash_init:
 led_classdev_flash_unregister(fled_cdev);
 return ret;
}
