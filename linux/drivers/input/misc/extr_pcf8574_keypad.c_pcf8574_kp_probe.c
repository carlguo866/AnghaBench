
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kp_data {scalar_t__* btncode; int laststate; int phys; int name; struct i2c_client* client; struct input_dev* idev; } ;
struct TYPE_2__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {scalar_t__* keycode; int keycodesize; int keycodemax; TYPE_1__ id; int phys; int name; int keybit; int * evbit; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int BIT_MASK (int ) ;
 int BUS_I2C ;
 char* DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ KEY_MAX ;
 int KEY_RESERVED ;
 int __clear_bit (int ,int ) ;
 int __set_bit (scalar_t__,int ) ;
 int dev_err (int *,char*,...) ;
 int free_irq (int ,struct kp_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct kp_data*) ;
 scalar_t__ i2c_smbus_write_byte (struct i2c_client*,int) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct kp_data*) ;
 struct kp_data* kzalloc (int,int ) ;
 scalar_t__* pcf8574_kp_btncode ;
 int pcf8574_kp_irq_handler ;
 int read_state (struct kp_data*) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct kp_data*) ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int pcf8574_kp_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 int i, ret;
 struct input_dev *idev;
 struct kp_data *lp;

 if (i2c_smbus_write_byte(client, 240) < 0) {
  dev_err(&client->dev, "probe: write fail\n");
  return -ENODEV;
 }

 lp = kzalloc(sizeof(*lp), GFP_KERNEL);
 if (!lp)
  return -ENOMEM;

 idev = input_allocate_device();
 if (!idev) {
  dev_err(&client->dev, "Can't allocate input device\n");
  ret = -ENOMEM;
  goto fail_allocate;
 }

 lp->idev = idev;
 lp->client = client;

 idev->evbit[0] = BIT_MASK(EV_KEY);
 idev->keycode = lp->btncode;
 idev->keycodesize = sizeof(lp->btncode[0]);
 idev->keycodemax = ARRAY_SIZE(lp->btncode);

 for (i = 0; i < ARRAY_SIZE(pcf8574_kp_btncode); i++) {
  if (lp->btncode[i] <= KEY_MAX) {
   lp->btncode[i] = pcf8574_kp_btncode[i];
   __set_bit(lp->btncode[i], idev->keybit);
  }
 }
 __clear_bit(KEY_RESERVED, idev->keybit);

 sprintf(lp->name, DRV_NAME);
 sprintf(lp->phys, "kp_data/input0");

 idev->name = lp->name;
 idev->phys = lp->phys;
 idev->id.bustype = BUS_I2C;
 idev->id.vendor = 0x0001;
 idev->id.product = 0x0001;
 idev->id.version = 0x0100;

 lp->laststate = read_state(lp);

 ret = request_threaded_irq(client->irq, ((void*)0), pcf8574_kp_irq_handler,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       DRV_NAME, lp);
 if (ret) {
  dev_err(&client->dev, "IRQ %d is not free\n", client->irq);
  goto fail_free_device;
 }

 ret = input_register_device(idev);
 if (ret) {
  dev_err(&client->dev, "input_register_device() failed\n");
  goto fail_free_irq;
 }

 i2c_set_clientdata(client, lp);
 return 0;

 fail_free_irq:
 free_irq(client->irq, lp);
 fail_free_device:
 input_free_device(idev);
 fail_allocate:
 kfree(lp);

 return ret;
}
