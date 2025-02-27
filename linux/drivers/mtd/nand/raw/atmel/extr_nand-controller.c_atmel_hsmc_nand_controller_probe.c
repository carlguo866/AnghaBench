
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_nand_controller_caps {scalar_t__ legacy_of_bindings; } ;
struct TYPE_4__ {int smc; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ base; int irq; } ;


 int ATMEL_HSMC_NFC_CFG ;
 int ATMEL_HSMC_NFC_CFG_DTO_MAX ;
 int ATMEL_HSMC_NFC_IDR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int atmel_hsmc_nand_controller_init (struct atmel_hsmc_nand_controller*) ;
 int atmel_hsmc_nand_controller_legacy_init (struct atmel_hsmc_nand_controller*) ;
 int atmel_hsmc_nand_controller_remove (TYPE_1__*) ;
 int atmel_nand_controller_add_nands (TYPE_1__*) ;
 int atmel_nand_controller_init (TYPE_1__*,struct platform_device*,struct atmel_nand_controller_caps const*) ;
 int atmel_nfc_interrupt ;
 int dev_err (struct device*,char*,int) ;
 struct atmel_hsmc_nand_controller* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct atmel_hsmc_nand_controller*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int atmel_hsmc_nand_controller_probe(struct platform_device *pdev,
    const struct atmel_nand_controller_caps *caps)
{
 struct device *dev = &pdev->dev;
 struct atmel_hsmc_nand_controller *nc;
 int ret;

 nc = devm_kzalloc(dev, sizeof(*nc), GFP_KERNEL);
 if (!nc)
  return -ENOMEM;

 ret = atmel_nand_controller_init(&nc->base, pdev, caps);
 if (ret)
  return ret;

 if (caps->legacy_of_bindings)
  ret = atmel_hsmc_nand_controller_legacy_init(nc);
 else
  ret = atmel_hsmc_nand_controller_init(nc);

 if (ret)
  return ret;


 regmap_write(nc->base.smc, ATMEL_HSMC_NFC_IDR, 0xffffffff);
 ret = devm_request_irq(dev, nc->irq, atmel_nfc_interrupt,
          IRQF_SHARED, "nfc", nc);
 if (ret) {
  dev_err(dev,
   "Could not get register NFC interrupt handler (err = %d)\n",
   ret);
  goto err;
 }


 regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CFG,
       ATMEL_HSMC_NFC_CFG_DTO_MAX);

 ret = atmel_nand_controller_add_nands(&nc->base);
 if (ret)
  goto err;

 return 0;

err:
 atmel_hsmc_nand_controller_remove(&nc->base);

 return ret;
}
