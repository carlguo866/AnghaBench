
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int AMS_DELTA_GPIO_PIN_NAND_RB ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int ams_delta_nand_ready(struct mtd_info *mtd)
{
 return gpio_get_value(AMS_DELTA_GPIO_PIN_NAND_RB);
}
