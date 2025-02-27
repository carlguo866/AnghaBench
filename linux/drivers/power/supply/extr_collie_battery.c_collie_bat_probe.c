
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ucb1x00_dev {TYPE_1__* ucb; } ;
struct power_supply_config {TYPE_2__* drv_data; } ;
struct TYPE_6__ {void* psy; int work_lock; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int COLLIE_GPIO_CO ;
 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bat_work ;
 int cancel_work_sync (int *) ;
 TYPE_2__ collie_bat_bu ;
 int collie_bat_bu_desc ;
 int collie_bat_gpio_isr ;
 TYPE_2__ collie_bat_main ;
 int collie_bat_main_desc ;
 int collie_bat_work ;
 int collie_batt_gpios ;
 int device_init_wakeup (int *,int) ;
 int gpio_free_array (int ,int ) ;
 int gpio_request_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int machine_is_collie () ;
 int mutex_init (int *) ;
 void* power_supply_register (int *,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;
 int request_irq (int ,int ,int,char*,TYPE_2__*) ;
 int schedule_work (int *) ;
 TYPE_1__* ucb ;

__attribute__((used)) static int collie_bat_probe(struct ucb1x00_dev *dev)
{
 int ret;
 struct power_supply_config psy_main_cfg = {}, psy_bu_cfg = {};

 if (!machine_is_collie())
  return -ENODEV;

 ucb = dev->ucb;

 ret = gpio_request_array(collie_batt_gpios,
     ARRAY_SIZE(collie_batt_gpios));
 if (ret)
  return ret;

 mutex_init(&collie_bat_main.work_lock);

 INIT_WORK(&bat_work, collie_bat_work);

 psy_main_cfg.drv_data = &collie_bat_main;
 collie_bat_main.psy = power_supply_register(&dev->ucb->dev,
          &collie_bat_main_desc,
          &psy_main_cfg);
 if (IS_ERR(collie_bat_main.psy)) {
  ret = PTR_ERR(collie_bat_main.psy);
  goto err_psy_reg_main;
 }

 psy_bu_cfg.drv_data = &collie_bat_bu;
 collie_bat_bu.psy = power_supply_register(&dev->ucb->dev,
        &collie_bat_bu_desc,
        &psy_bu_cfg);
 if (IS_ERR(collie_bat_bu.psy)) {
  ret = PTR_ERR(collie_bat_bu.psy);
  goto err_psy_reg_bu;
 }

 ret = request_irq(gpio_to_irq(COLLIE_GPIO_CO),
    collie_bat_gpio_isr,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
    "main full", &collie_bat_main);
 if (ret)
  goto err_irq;

 device_init_wakeup(&ucb->dev, 1);
 schedule_work(&bat_work);

 return 0;

err_irq:
 power_supply_unregister(collie_bat_bu.psy);
err_psy_reg_bu:
 power_supply_unregister(collie_bat_main.psy);
err_psy_reg_main:


 cancel_work_sync(&bat_work);
 gpio_free_array(collie_batt_gpios, ARRAY_SIZE(collie_batt_gpios));
 return ret;
}
