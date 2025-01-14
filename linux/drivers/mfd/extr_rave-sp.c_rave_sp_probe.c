
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;
struct serdev_device {struct device dev; } ;
struct rave_sp {char const* part_number_firmware; char const* part_number_bootloader; int event_notifier_list; int reply_lock; int bus_lock; int variant; struct serdev_device* serdev; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SERDEV_PARITY_NONE ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,char const*) ;
 int dev_set_drvdata (struct device*,struct rave_sp*) ;
 int dev_warn (struct device*,char*,int) ;
 struct rave_sp* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int devm_serdev_device_open (struct device*,struct serdev_device*) ;
 int mutex_init (int *) ;
 int of_device_get_match_data (struct device*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int rave_sp_get_status (struct rave_sp*) ;
 int rave_sp_serdev_device_ops ;
 int serdev_device_set_baudrate (struct serdev_device*,int ) ;
 int serdev_device_set_client_ops (struct serdev_device*,int *) ;
 int serdev_device_set_flow_control (struct serdev_device*,int) ;
 int serdev_device_set_parity (struct serdev_device*,int ) ;

__attribute__((used)) static int rave_sp_probe(struct serdev_device *serdev)
{
 struct device *dev = &serdev->dev;
 const char *unknown = "unknown\n";
 struct rave_sp *sp;
 u32 baud;
 int ret;

 if (of_property_read_u32(dev->of_node, "current-speed", &baud)) {
  dev_err(dev,
   "'current-speed' is not specified in device node\n");
  return -EINVAL;
 }

 sp = devm_kzalloc(dev, sizeof(*sp), GFP_KERNEL);
 if (!sp)
  return -ENOMEM;

 sp->serdev = serdev;
 dev_set_drvdata(dev, sp);

 sp->variant = of_device_get_match_data(dev);
 if (!sp->variant)
  return -ENODEV;

 mutex_init(&sp->bus_lock);
 mutex_init(&sp->reply_lock);
 BLOCKING_INIT_NOTIFIER_HEAD(&sp->event_notifier_list);

 serdev_device_set_client_ops(serdev, &rave_sp_serdev_device_ops);
 ret = devm_serdev_device_open(dev, serdev);
 if (ret)
  return ret;

 serdev_device_set_baudrate(serdev, baud);
 serdev_device_set_flow_control(serdev, 0);

 ret = serdev_device_set_parity(serdev, SERDEV_PARITY_NONE);
 if (ret) {
  dev_err(dev, "Failed to set parity\n");
  return ret;
 }

 ret = rave_sp_get_status(sp);
 if (ret) {
  dev_warn(dev, "Failed to get firmware status: %d\n", ret);
  sp->part_number_firmware = unknown;
  sp->part_number_bootloader = unknown;
 }





 dev_info(dev, "Firmware version: %s", sp->part_number_firmware);
 dev_info(dev, "Bootloader version: %s", sp->part_number_bootloader);

 return devm_of_platform_populate(dev);
}
