
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ brightness; int power; } ;
struct lcd_device {TYPE_1__ props; } ;
struct cr_panel {struct lcd_device* cr_lcd_device; struct lcd_device* cr_backlight_device; } ;
struct backlight_properties {int type; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 int CRVML_DEVICE_LPC ;
 int CRVML_GPIOEN_BIT ;
 int CRVML_REG_GPIOBAR ;
 int CRVML_REG_GPIOEN ;
 int ENODEV ;
 int ENOMEM ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PCI_VENDOR_ID_INTEL ;
 int PTR_ERR (struct lcd_device*) ;
 int cr_backlight_ops ;
 int cr_backlight_set_intensity (struct lcd_device*) ;
 int cr_lcd_ops ;
 int cr_lcd_set_power (struct lcd_device*,int ) ;
 struct lcd_device* devm_backlight_device_register (int *,char*,int *,int *,int *,struct backlight_properties*) ;
 struct cr_panel* devm_kzalloc (int *,int,int ) ;
 struct lcd_device* devm_lcd_device_register (int *,char*,int *,int *,int *) ;
 int gpio_bar ;
 int lpc_dev ;
 int memset (struct backlight_properties*,int ,int) ;
 int pci_dev_put (int ) ;
 int pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int platform_set_drvdata (struct platform_device*,struct cr_panel*) ;
 int pr_err (char*) ;

__attribute__((used)) static int cr_backlight_probe(struct platform_device *pdev)
{
 struct backlight_properties props;
 struct backlight_device *bdp;
 struct lcd_device *ldp;
 struct cr_panel *crp;
 u8 dev_en;

 lpc_dev = pci_get_device(PCI_VENDOR_ID_INTEL,
     CRVML_DEVICE_LPC, ((void*)0));
 if (!lpc_dev) {
  pr_err("INTEL CARILLO RANCH LPC not found.\n");
  return -ENODEV;
 }

 pci_read_config_byte(lpc_dev, CRVML_REG_GPIOEN, &dev_en);
 if (!(dev_en & CRVML_GPIOEN_BIT)) {
  pr_err("Carillo Ranch GPIO device was not enabled.\n");
  pci_dev_put(lpc_dev);
  return -ENODEV;
 }

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 bdp = devm_backlight_device_register(&pdev->dev, "cr-backlight",
     &pdev->dev, ((void*)0), &cr_backlight_ops,
     &props);
 if (IS_ERR(bdp)) {
  pci_dev_put(lpc_dev);
  return PTR_ERR(bdp);
 }

 ldp = devm_lcd_device_register(&pdev->dev, "cr-lcd", &pdev->dev, ((void*)0),
     &cr_lcd_ops);
 if (IS_ERR(ldp)) {
  pci_dev_put(lpc_dev);
  return PTR_ERR(ldp);
 }

 pci_read_config_dword(lpc_dev, CRVML_REG_GPIOBAR,
         &gpio_bar);
 gpio_bar &= ~0x3F;

 crp = devm_kzalloc(&pdev->dev, sizeof(*crp), GFP_KERNEL);
 if (!crp) {
  pci_dev_put(lpc_dev);
  return -ENOMEM;
 }

 crp->cr_backlight_device = bdp;
 crp->cr_lcd_device = ldp;
 crp->cr_backlight_device->props.power = FB_BLANK_UNBLANK;
 crp->cr_backlight_device->props.brightness = 0;
 cr_backlight_set_intensity(crp->cr_backlight_device);
 cr_lcd_set_power(crp->cr_lcd_device, FB_BLANK_UNBLANK);

 platform_set_drvdata(pdev, crp);

 return 0;
}
