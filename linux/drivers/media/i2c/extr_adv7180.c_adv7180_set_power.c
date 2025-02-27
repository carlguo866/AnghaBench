
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adv7180_state {scalar_t__ field; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;


 int ADV7180_FLAG_MIPI_CSI2 ;
 int ADV7180_PWR_MAN_OFF ;
 int ADV7180_PWR_MAN_ON ;
 int ADV7180_REG_PWR_MAN ;
 scalar_t__ V4L2_FIELD_NONE ;
 int adv7180_csi_write (struct adv7180_state*,int,int) ;
 int adv7180_write (struct adv7180_state*,int ,int ) ;

__attribute__((used)) static int adv7180_set_power(struct adv7180_state *state, bool on)
{
 u8 val;
 int ret;

 if (on)
  val = ADV7180_PWR_MAN_ON;
 else
  val = ADV7180_PWR_MAN_OFF;

 ret = adv7180_write(state, ADV7180_REG_PWR_MAN, val);
 if (ret)
  return ret;

 if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
  if (on) {
   adv7180_csi_write(state, 0xDE, 0x02);
   adv7180_csi_write(state, 0xD2, 0xF7);
   adv7180_csi_write(state, 0xD8, 0x65);
   adv7180_csi_write(state, 0xE0, 0x09);
   adv7180_csi_write(state, 0x2C, 0x00);
   if (state->field == V4L2_FIELD_NONE)
    adv7180_csi_write(state, 0x1D, 0x80);
   adv7180_csi_write(state, 0x00, 0x00);
  } else {
   adv7180_csi_write(state, 0x00, 0x80);
  }
 }

 return 0;
}
