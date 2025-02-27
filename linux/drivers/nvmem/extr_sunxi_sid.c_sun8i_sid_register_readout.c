
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_sid {scalar_t__ base; } ;


 unsigned int const SUN8I_SID_OFFSET_MASK ;
 unsigned int const SUN8I_SID_OFFSET_SHIFT ;
 int SUN8I_SID_OP_LOCK ;
 scalar_t__ SUN8I_SID_PRCTL ;
 scalar_t__ SUN8I_SID_RDKEY ;
 int SUN8I_SID_READ ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun8i_sid_register_readout(const struct sunxi_sid *sid,
          const unsigned int offset,
          u32 *out)
{
 u32 reg_val;
 int ret;


 reg_val = (offset & SUN8I_SID_OFFSET_MASK)
    << SUN8I_SID_OFFSET_SHIFT;
 reg_val |= SUN8I_SID_OP_LOCK | SUN8I_SID_READ;
 writel(reg_val, sid->base + SUN8I_SID_PRCTL);

 ret = readl_poll_timeout(sid->base + SUN8I_SID_PRCTL, reg_val,
     !(reg_val & SUN8I_SID_READ), 100, 250000);
 if (ret)
  return ret;

 if (out)
  *out = readl(sid->base + SUN8I_SID_RDKEY);

 writel(0, sid->base + SUN8I_SID_PRCTL);

 return 0;
}
