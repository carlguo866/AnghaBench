
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ EINVAL ;
 scalar_t__ PIN_CFG_EPIO0 ;
 scalar_t__ PIN_CFG_GPIO0_P0 ;
 scalar_t__ PIN_CFG_NA ;
 int bnx2x_get_epio (struct bnx2x*,scalar_t__,scalar_t__*) ;
 scalar_t__ bnx2x_get_gpio (struct bnx2x*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 bnx2x_get_cfg_pin(struct bnx2x *bp, u32 pin_cfg, u32 *val)
{
 if (pin_cfg == PIN_CFG_NA)
  return -EINVAL;
 if (pin_cfg >= PIN_CFG_EPIO0) {
  bnx2x_get_epio(bp, pin_cfg - PIN_CFG_EPIO0, val);
 } else {
  u8 gpio_num = (pin_cfg - PIN_CFG_GPIO0_P0) & 0x3;
  u8 gpio_port = (pin_cfg - PIN_CFG_GPIO0_P0) >> 2;
  *val = bnx2x_get_gpio(bp, gpio_num, gpio_port);
 }
 return 0;

}
