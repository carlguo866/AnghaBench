
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max8997_led {int led_mode; TYPE_1__* iodev; int id; } ;
struct i2c_client {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int dev; struct i2c_client* i2c; } ;




 int MAX8997_LED_FLASH_CUR_MASK ;
 int MAX8997_LED_FLASH_SHIFT ;
 int MAX8997_LED_MOVIE_CUR_MASK ;
 int MAX8997_LED_MOVIE_SHIFT ;


 int MAX8997_REG_FLASH1_CUR ;
 int MAX8997_REG_FLASH2_CUR ;
 int MAX8997_REG_MOVIE_CUR ;
 int dev_err (int ,char*,int) ;
 int max8997_update_reg (struct i2c_client*,int,int,int) ;

__attribute__((used)) static void max8997_led_set_current(struct max8997_led *led,
    enum led_brightness value)
{
 int ret;
 struct i2c_client *client = led->iodev->i2c;
 u8 val = 0, mask = 0, reg = 0;

 switch (led->led_mode) {
 case 131:
 case 130:
  val = value << MAX8997_LED_FLASH_SHIFT;
  mask = MAX8997_LED_FLASH_CUR_MASK;
  reg = led->id ? MAX8997_REG_FLASH2_CUR : MAX8997_REG_FLASH1_CUR;
  break;
 case 129:
 case 128:
  val = value << MAX8997_LED_MOVIE_SHIFT;
  mask = MAX8997_LED_MOVIE_CUR_MASK;
  reg = MAX8997_REG_MOVIE_CUR;
  break;
 default:
  break;
 }

 if (mask) {
  ret = max8997_update_reg(client, reg, val, mask);
  if (ret)
   dev_err(led->iodev->dev,
    "failed to update register(%d)\n", ret);
 }
}
