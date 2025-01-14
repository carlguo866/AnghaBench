
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nic78bx_led_data {scalar_t__ io_base; int lock; struct platform_device* pdev; } ;
struct TYPE_3__ {int cdev; struct nic78bx_led_data* data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int KBUILD_MODNAME ;
 scalar_t__ NIC78BX_LOCK_REG_OFFSET ;
 int NIC78BX_UNLOCK_VALUE ;
 scalar_t__ NIC78BX_USER_LED_IO_SIZE ;
 int dev_err (struct device*,char*) ;
 struct nic78bx_led_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_led_classdev_register (struct device*,int *) ;
 int devm_request_region (struct device*,scalar_t__,scalar_t__,int ) ;
 TYPE_1__* nic78bx_leds ;
 int outb (int ,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct nic78bx_led_data*) ;
 scalar_t__ resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nic78bx_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct nic78bx_led_data *led_data;
 struct resource *io_rc;
 int ret, i;

 led_data = devm_kzalloc(dev, sizeof(*led_data), GFP_KERNEL);
 if (!led_data)
  return -ENOMEM;

 led_data->pdev = pdev;
 platform_set_drvdata(pdev, led_data);

 io_rc = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!io_rc) {
  dev_err(dev, "missing IO resources\n");
  return -EINVAL;
 }

 if (resource_size(io_rc) < NIC78BX_USER_LED_IO_SIZE) {
  dev_err(dev, "IO region too small\n");
  return -EINVAL;
 }

 if (!devm_request_region(dev, io_rc->start, resource_size(io_rc),
     KBUILD_MODNAME)) {
  dev_err(dev, "failed to get IO region\n");
  return -EBUSY;
 }

 led_data->io_base = io_rc->start;
 spin_lock_init(&led_data->lock);

 for (i = 0; i < ARRAY_SIZE(nic78bx_leds); i++) {
  nic78bx_leds[i].data = led_data;

  ret = devm_led_classdev_register(dev, &nic78bx_leds[i].cdev);
  if (ret)
   return ret;
 }


 outb(NIC78BX_UNLOCK_VALUE,
      led_data->io_base + NIC78BX_LOCK_REG_OFFSET);

 return ret;
}
