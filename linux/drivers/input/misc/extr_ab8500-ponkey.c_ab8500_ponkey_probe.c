
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {TYPE_2__* parent; } ;
struct input_dev {char* name; TYPE_1__ dev; } ;
struct ab8500_ponkey {int irq_dbf; int irq_dbr; struct input_dev* idev; struct ab8500* ab8500; } ;
struct ab8500 {int dev; } ;


 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int KEY_POWER ;
 int ab8500_ponkey_handler ;
 int dev_err (int ,char*,int,...) ;
 struct ab8500* dev_get_drvdata (int ) ;
 struct input_dev* devm_input_allocate_device (TYPE_2__*) ;
 struct ab8500_ponkey* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_any_context_irq (TYPE_2__*,int,int ,int ,char*,struct ab8500_ponkey*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int ab8500_ponkey_probe(struct platform_device *pdev)
{
 struct ab8500 *ab8500 = dev_get_drvdata(pdev->dev.parent);
 struct ab8500_ponkey *ponkey;
 struct input_dev *input;
 int irq_dbf, irq_dbr;
 int error;

 irq_dbf = platform_get_irq_byname(pdev, "ONKEY_DBF");
 if (irq_dbf < 0)
  return irq_dbf;

 irq_dbr = platform_get_irq_byname(pdev, "ONKEY_DBR");
 if (irq_dbr < 0)
  return irq_dbr;

 ponkey = devm_kzalloc(&pdev->dev, sizeof(struct ab8500_ponkey),
         GFP_KERNEL);
 if (!ponkey)
  return -ENOMEM;

 input = devm_input_allocate_device(&pdev->dev);
 if (!input)
  return -ENOMEM;

 ponkey->idev = input;
 ponkey->ab8500 = ab8500;
 ponkey->irq_dbf = irq_dbf;
 ponkey->irq_dbr = irq_dbr;

 input->name = "AB8500 POn(PowerOn) Key";
 input->dev.parent = &pdev->dev;

 input_set_capability(input, EV_KEY, KEY_POWER);

 error = devm_request_any_context_irq(&pdev->dev, ponkey->irq_dbf,
          ab8500_ponkey_handler, 0,
          "ab8500-ponkey-dbf", ponkey);
 if (error < 0) {
  dev_err(ab8500->dev, "Failed to request dbf IRQ#%d: %d\n",
   ponkey->irq_dbf, error);
  return error;
 }

 error = devm_request_any_context_irq(&pdev->dev, ponkey->irq_dbr,
          ab8500_ponkey_handler, 0,
          "ab8500-ponkey-dbr", ponkey);
 if (error < 0) {
  dev_err(ab8500->dev, "Failed to request dbr IRQ#%d: %d\n",
   ponkey->irq_dbr, error);
  return error;
 }

 error = input_register_device(ponkey->idev);
 if (error) {
  dev_err(ab8500->dev, "Can't register input device: %d\n", error);
  return error;
 }

 return 0;
}
