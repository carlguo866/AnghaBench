
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int info; } ;


 int EINVAL ;
 int SCA3000_REG_CTRL_SEL_OUT_CTRL ;
 int SCA3000_REG_OUT_CTRL_BUF_DIV_2 ;
 int SCA3000_REG_OUT_CTRL_BUF_DIV_4 ;
 int SCA3000_REG_OUT_CTRL_BUF_DIV_MASK ;
 int __sca3000_get_base_freq (struct sca3000_state*,int ,int*) ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ) ;
 int sca3000_write_ctrl_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_write_raw_samp_freq(struct sca3000_state *st, int val)
{
 int ret, base_freq, ctrlval;

 ret = __sca3000_get_base_freq(st, st->info, &base_freq);
 if (ret)
  return ret;

 ret = sca3000_read_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL);
 if (ret < 0)
  return ret;

 ctrlval = ret & ~SCA3000_REG_OUT_CTRL_BUF_DIV_MASK;

 if (val == base_freq / 2)
  ctrlval |= SCA3000_REG_OUT_CTRL_BUF_DIV_2;
 if (val == base_freq / 4)
  ctrlval |= SCA3000_REG_OUT_CTRL_BUF_DIV_4;
 else if (val != base_freq)
  return -EINVAL;

 return sca3000_write_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL,
         ctrlval);
}
