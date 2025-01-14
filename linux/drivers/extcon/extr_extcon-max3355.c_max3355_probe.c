
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; int name; } ;
struct max3355_data {struct gpio_desc* id_gpiod; struct gpio_desc* edev; struct gpio_desc* shdn_gpiod; } ;
struct gpio_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (int *,char*) ;
 struct gpio_desc* devm_extcon_dev_allocate (int *,int ) ;
 int devm_extcon_dev_register (int *,struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get (int *,char*,int ) ;
 struct max3355_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int,int *,int (*) (int,struct max3355_data*),int,int ,struct max3355_data*) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int max3355_cable ;
 int max3355_id_irq (int,struct max3355_data*) ;
 int platform_set_drvdata (struct platform_device*,struct max3355_data*) ;

__attribute__((used)) static int max3355_probe(struct platform_device *pdev)
{
 struct max3355_data *data;
 struct gpio_desc *gpiod;
 int irq, err;

 data = devm_kzalloc(&pdev->dev, sizeof(struct max3355_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 gpiod = devm_gpiod_get(&pdev->dev, "id", GPIOD_IN);
 if (IS_ERR(gpiod)) {
  dev_err(&pdev->dev, "failed to get ID_OUT GPIO\n");
  return PTR_ERR(gpiod);
 }
 data->id_gpiod = gpiod;

 gpiod = devm_gpiod_get(&pdev->dev, "maxim,shdn", GPIOD_OUT_HIGH);
 if (IS_ERR(gpiod)) {
  dev_err(&pdev->dev, "failed to get SHDN# GPIO\n");
  return PTR_ERR(gpiod);
 }
 data->shdn_gpiod = gpiod;

 data->edev = devm_extcon_dev_allocate(&pdev->dev, max3355_cable);
 if (IS_ERR(data->edev)) {
  dev_err(&pdev->dev, "failed to allocate extcon device\n");
  return PTR_ERR(data->edev);
 }

 err = devm_extcon_dev_register(&pdev->dev, data->edev);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to register extcon device\n");
  return err;
 }

 irq = gpiod_to_irq(data->id_gpiod);
 if (irq < 0) {
  dev_err(&pdev->dev, "failed to translate ID_OUT GPIO to IRQ\n");
  return irq;
 }

 err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), max3355_id_irq,
     IRQF_ONESHOT | IRQF_NO_SUSPEND |
     IRQF_TRIGGER_RISING |
     IRQF_TRIGGER_FALLING,
     pdev->name, data);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to request ID_OUT IRQ\n");
  return err;
 }

 platform_set_drvdata(pdev, data);


 max3355_id_irq(irq, data);

 return 0;
}
