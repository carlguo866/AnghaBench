
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct max77693_led_device {struct regmap* regmap; } ;


 int FLASH_EN_FLASH ;
 int FLASH_EN_ON ;
 int FLASH_EN_SHIFT (int) ;
 int FLASH_EN_TORCH ;
 int FLED1 ;
 int FLED2 ;
 int MAX77693_LED_REG_FLASH_EN ;
 int MODE_FLASH (int) ;
 int MODE_FLASH_EXTERNAL (int) ;
 int MODE_TORCH (int) ;
 int TORCH_EN_SHIFT (int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int max77693_set_mode_reg(struct max77693_led_device *led, u8 mode)
{
 struct regmap *rmap = led->regmap;
 int ret, v = 0, i;

 for (i = FLED1; i <= FLED2; ++i) {
  if (mode & MODE_TORCH(i))
   v |= FLASH_EN_ON << TORCH_EN_SHIFT(i);

  if (mode & MODE_FLASH(i)) {
   v |= FLASH_EN_ON << FLASH_EN_SHIFT(i);
  } else if (mode & MODE_FLASH_EXTERNAL(i)) {
   v |= FLASH_EN_FLASH << FLASH_EN_SHIFT(i);





   v |= FLASH_EN_TORCH << TORCH_EN_SHIFT(i);
  }
 }


 if (mode & ~(MODE_TORCH(FLED1) | MODE_TORCH(FLED2))) {
  ret = regmap_write(rmap, MAX77693_LED_REG_FLASH_EN, 0);
  if (ret < 0)
   return ret;
 }

 return regmap_write(rmap, MAX77693_LED_REG_FLASH_EN, v);
}
