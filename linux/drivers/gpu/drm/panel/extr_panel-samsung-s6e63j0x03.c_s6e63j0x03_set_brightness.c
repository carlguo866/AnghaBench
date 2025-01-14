
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6e63j0x03 {int dummy; } ;
struct TYPE_2__ {unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 struct s6e63j0x03* bl_get_data (struct backlight_device*) ;
 int s6e63j0x03_update_gamma (struct s6e63j0x03*,unsigned int) ;

__attribute__((used)) static int s6e63j0x03_set_brightness(struct backlight_device *bl_dev)
{
 struct s6e63j0x03 *ctx = bl_get_data(bl_dev);
 unsigned int brightness = bl_dev->props.brightness;

 return s6e63j0x03_update_gamma(ctx, brightness);
}
