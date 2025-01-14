
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {struct pinmux_data_reg* data_regs; int data; struct pinmux_gpio* gpios; } ;
struct pinmux_gpio {int flags; int enum_id; } ;
struct pinmux_data_reg {int dummy; } ;


 int PINMUX_FLAG_DBIT ;
 int PINMUX_FLAG_DBIT_SHIFT ;
 int PINMUX_FLAG_DREG ;
 int PINMUX_FLAG_DREG_SHIFT ;
 int enum_in_range (int ,int *) ;

__attribute__((used)) static int get_data_reg(struct pinmux_info *gpioc, unsigned gpio,
   struct pinmux_data_reg **drp, int *bitp)
{
 struct pinmux_gpio *gpiop = &gpioc->gpios[gpio];
 int k, n;

 if (!enum_in_range(gpiop->enum_id, &gpioc->data))
  return -1;

 k = (gpiop->flags & PINMUX_FLAG_DREG) >> PINMUX_FLAG_DREG_SHIFT;
 n = (gpiop->flags & PINMUX_FLAG_DBIT) >> PINMUX_FLAG_DBIT_SHIFT;
 *drp = gpioc->data_regs + k;
 *bitp = n;
 return 0;
}
