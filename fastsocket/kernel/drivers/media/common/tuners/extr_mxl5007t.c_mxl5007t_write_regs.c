
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_pair_t {scalar_t__ val; scalar_t__ reg; } ;
struct mxl5007t_state {int dummy; } ;


 int mxl5007t_write_reg (struct mxl5007t_state*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int mxl5007t_write_regs(struct mxl5007t_state *state,
          struct reg_pair_t *reg_pair)
{
 unsigned int i = 0;
 int ret = 0;

 while ((ret == 0) && (reg_pair[i].reg || reg_pair[i].val)) {
  ret = mxl5007t_write_reg(state,
      reg_pair[i].reg, reg_pair[i].val);
  i++;
 }
 return ret;
}
