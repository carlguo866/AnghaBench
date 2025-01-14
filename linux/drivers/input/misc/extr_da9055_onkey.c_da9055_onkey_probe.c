
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct input_dev {char* name; char* phys; int keybit; int * evbit; TYPE_1__ dev; } ;
struct da9055_onkey {int work; struct da9055* da9055; struct input_dev* input; } ;
struct da9055 {int dummy; } ;


 int BIT_MASK (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int KEY_POWER ;
 int __set_bit (int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int da9055_onkey_irq ;
 int da9055_onkey_work ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct da9055* dev_get_drvdata (int ) ;
 struct da9055_onkey* devm_kzalloc (TYPE_2__*,int,int ) ;
 int free_irq (int,struct da9055_onkey*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9055_onkey*) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct da9055_onkey*) ;

__attribute__((used)) static int da9055_onkey_probe(struct platform_device *pdev)
{
 struct da9055 *da9055 = dev_get_drvdata(pdev->dev.parent);
 struct da9055_onkey *onkey;
 struct input_dev *input_dev;
 int irq, err;

 irq = platform_get_irq_byname(pdev, "ONKEY");
 if (irq < 0)
  return -EINVAL;

 onkey = devm_kzalloc(&pdev->dev, sizeof(*onkey), GFP_KERNEL);
 if (!onkey) {
  dev_err(&pdev->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 input_dev = input_allocate_device();
 if (!input_dev) {
  dev_err(&pdev->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 onkey->input = input_dev;
 onkey->da9055 = da9055;
 input_dev->name = "da9055-onkey";
 input_dev->phys = "da9055-onkey/input0";
 input_dev->dev.parent = &pdev->dev;

 input_dev->evbit[0] = BIT_MASK(EV_KEY);
 __set_bit(KEY_POWER, input_dev->keybit);

 INIT_DELAYED_WORK(&onkey->work, da9055_onkey_work);

 err = request_threaded_irq(irq, ((void*)0), da9055_onkey_irq,
       IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
       "ONKEY", onkey);
 if (err < 0) {
  dev_err(&pdev->dev,
   "Failed to register ONKEY IRQ %d, error = %d\n",
   irq, err);
  goto err_free_input;
 }

 err = input_register_device(input_dev);
 if (err) {
  dev_err(&pdev->dev, "Unable to register input device, %d\n",
   err);
  goto err_free_irq;
 }

 platform_set_drvdata(pdev, onkey);

 return 0;

err_free_irq:
 free_irq(irq, onkey);
 cancel_delayed_work_sync(&onkey->work);
err_free_input:
 input_free_device(input_dev);

 return err;
}
