
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmfx_pinctrl {TYPE_1__* stmfx; } ;
struct TYPE_2__ {int map; } ;


 scalar_t__ STMFX_REG_GPIO_TYPE ;
 scalar_t__ get_mask (unsigned int) ;
 scalar_t__ get_reg (unsigned int) ;
 int regmap_write_bits (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int stmfx_pinconf_set_type(struct stmfx_pinctrl *pctl,
      unsigned int offset, u32 type)
{
 u32 reg = STMFX_REG_GPIO_TYPE + get_reg(offset);
 u32 mask = get_mask(offset);

 return regmap_write_bits(pctl->stmfx->map, reg, mask, type ? mask : 0);
}
