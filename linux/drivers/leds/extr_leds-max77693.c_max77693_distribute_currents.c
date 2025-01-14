
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct max77693_led_device {int allowed_modes; int iout_joint; } ;
typedef enum max77693_led_mode { ____Placeholder_max77693_led_mode } max77693_led_mode ;


 int FLASH ;
 size_t FLED1 ;
 size_t FLED2 ;
 int MODE_FLASH_MASK ;
 int MODE_TORCH_MASK ;
 int max77693_add_allowed_modes (struct max77693_led_device*,size_t,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void max77693_distribute_currents(struct max77693_led_device *led,
    int fled_id, enum max77693_led_mode mode,
    u32 micro_amp, u32 iout_max[2], u32 iout[2])
{
 if (!led->iout_joint) {
  iout[fled_id] = micro_amp;
  max77693_add_allowed_modes(led, fled_id, mode);
  return;
 }

 iout[FLED1] = min(micro_amp, iout_max[FLED1]);
 iout[FLED2] = micro_amp - iout[FLED1];

 if (mode == FLASH)
  led->allowed_modes &= ~MODE_FLASH_MASK;
 else
  led->allowed_modes &= ~MODE_TORCH_MASK;

 max77693_add_allowed_modes(led, FLED1, mode);

 if (iout[FLED2])
  max77693_add_allowed_modes(led, FLED2, mode);
}
