
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct irq_data {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* spi; } ;
struct adis16480 {TYPE_2__ adis; } ;
typedef enum adis16480_int_pin { ____Placeholder_adis16480_int_pin } adis16480_int_pin ;
struct TYPE_3__ {int dev; int irq; } ;


 int ADIS16480_DRDY_EN (int ) ;
 int ADIS16480_DRDY_POL (int) ;
 int ADIS16480_DRDY_SEL (int) ;
 int ADIS16480_PIN_DIO1 ;
 int ADIS16480_REG_FNCTIO_CTRL ;
 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int IRQF_TRIGGER_FALLING ;
 unsigned int IRQF_TRIGGER_RISING ;
 int * adis16480_int_pin_names ;
 int adis_write_reg_16 (TYPE_2__*,int ,int ) ;
 int dev_err (int *,char*,unsigned int) ;
 struct irq_data* irq_get_irq_data (int ) ;
 unsigned int irqd_get_trigger_type (struct irq_data*) ;
 int of_irq_get_byname (struct device_node*,int ) ;

__attribute__((used)) static int adis16480_config_irq_pin(struct device_node *of_node,
        struct adis16480 *st)
{
 struct irq_data *desc;
 enum adis16480_int_pin pin;
 unsigned int irq_type;
 uint16_t val;
 int i, irq = 0;

 desc = irq_get_irq_data(st->adis.spi->irq);
 if (!desc) {
  dev_err(&st->adis.spi->dev, "Could not find IRQ %d\n", irq);
  return -EINVAL;
 }


 val = ADIS16480_DRDY_EN(0);
 pin = ADIS16480_PIN_DIO1;
 for (i = 0; i < ARRAY_SIZE(adis16480_int_pin_names); i++) {
  irq = of_irq_get_byname(of_node, adis16480_int_pin_names[i]);
  if (irq > 0) {
   pin = i;
   break;
  }
 }

 val |= ADIS16480_DRDY_SEL(pin);






 irq_type = irqd_get_trigger_type(desc);
 if (irq_type == IRQF_TRIGGER_RISING) {
  val |= ADIS16480_DRDY_POL(1);
 } else if (irq_type == IRQF_TRIGGER_FALLING) {
  val |= ADIS16480_DRDY_POL(0);
 } else {
  dev_err(&st->adis.spi->dev,
   "Invalid interrupt type 0x%x specified\n", irq_type);
  return -EINVAL;
 }

 return adis_write_reg_16(&st->adis, ADIS16480_REG_FNCTIO_CTRL, val);
}
