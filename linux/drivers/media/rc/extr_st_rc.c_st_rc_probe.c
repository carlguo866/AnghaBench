
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rc_device {int rxuhfmode; int irq; scalar_t__ sys_clock; struct rc_dev* rdev; struct device* dev; scalar_t__ rstc; scalar_t__ base; scalar_t__ rx_base; } ;
struct resource {int dummy; } ;
struct rc_dev {int rx_resolution; char* device_name; int map_name; int driver_name; int close; int open; struct st_rc_device* priv; int timeout; int allowed_protocols; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IR_ST_NAME ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MAX_SYMB_TIME ;
 int PTR_ERR (scalar_t__) ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_EMPTY ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int US_TO_NS (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*) ;
 int dev_pm_set_wake_irq (struct device*,int) ;
 int device_init_wakeup (struct device*,int) ;
 scalar_t__ devm_clk_get (struct device*,int *) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct st_rc_device* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_request_irq (struct device*,int,int ,int ,int ,struct st_rc_device*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct st_rc_device*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int rc_unregister_device (struct rc_dev*) ;
 scalar_t__ reset_control_get_optional_exclusive (struct device*,int *) ;
 int st_rc_close ;
 int st_rc_hardware_init (struct st_rc_device*) ;
 int st_rc_open ;
 int st_rc_rx_interrupt ;
 int st_rc_send_lirc_timeout (struct rc_dev*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int st_rc_probe(struct platform_device *pdev)
{
 int ret = -EINVAL;
 struct rc_dev *rdev;
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct st_rc_device *rc_dev;
 struct device_node *np = pdev->dev.of_node;
 const char *rx_mode;

 rc_dev = devm_kzalloc(dev, sizeof(struct st_rc_device), GFP_KERNEL);

 if (!rc_dev)
  return -ENOMEM;

 rdev = rc_allocate_device(RC_DRIVER_IR_RAW);

 if (!rdev)
  return -ENOMEM;

 if (np && !of_property_read_string(np, "rx-mode", &rx_mode)) {

  if (!strcmp(rx_mode, "uhf")) {
   rc_dev->rxuhfmode = 1;
  } else if (!strcmp(rx_mode, "infrared")) {
   rc_dev->rxuhfmode = 0;
  } else {
   dev_err(dev, "Unsupported rx mode [%s]\n", rx_mode);
   goto err;
  }

 } else {
  goto err;
 }

 rc_dev->sys_clock = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(rc_dev->sys_clock)) {
  dev_err(dev, "System clock not found\n");
  ret = PTR_ERR(rc_dev->sys_clock);
  goto err;
 }

 rc_dev->irq = platform_get_irq(pdev, 0);
 if (rc_dev->irq < 0) {
  ret = rc_dev->irq;
  goto err;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 rc_dev->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(rc_dev->base)) {
  ret = PTR_ERR(rc_dev->base);
  goto err;
 }

 if (rc_dev->rxuhfmode)
  rc_dev->rx_base = rc_dev->base + 0x40;
 else
  rc_dev->rx_base = rc_dev->base;

 rc_dev->rstc = reset_control_get_optional_exclusive(dev, ((void*)0));
 if (IS_ERR(rc_dev->rstc)) {
  ret = PTR_ERR(rc_dev->rstc);
  goto err;
 }

 rc_dev->dev = dev;
 platform_set_drvdata(pdev, rc_dev);
 st_rc_hardware_init(rc_dev);

 rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;

 rdev->rx_resolution = 100;
 rdev->timeout = US_TO_NS(MAX_SYMB_TIME);
 rdev->priv = rc_dev;
 rdev->open = st_rc_open;
 rdev->close = st_rc_close;
 rdev->driver_name = IR_ST_NAME;
 rdev->map_name = RC_MAP_EMPTY;
 rdev->device_name = "ST Remote Control Receiver";

 ret = rc_register_device(rdev);
 if (ret < 0)
  goto clkerr;

 rc_dev->rdev = rdev;
 if (devm_request_irq(dev, rc_dev->irq, st_rc_rx_interrupt,
        0, IR_ST_NAME, rc_dev) < 0) {
  dev_err(dev, "IRQ %d register failed\n", rc_dev->irq);
  ret = -EINVAL;
  goto rcerr;
 }


 device_init_wakeup(dev, 1);
 dev_pm_set_wake_irq(dev, rc_dev->irq);





 st_rc_send_lirc_timeout(rdev);

 dev_info(dev, "setup in %s mode\n", rc_dev->rxuhfmode ? "UHF" : "IR");

 return ret;
rcerr:
 rc_unregister_device(rdev);
 rdev = ((void*)0);
clkerr:
 clk_disable_unprepare(rc_dev->sys_clock);
err:
 rc_free_device(rdev);
 dev_err(dev, "Unable to register device (%d)\n", ret);
 return ret;
}
