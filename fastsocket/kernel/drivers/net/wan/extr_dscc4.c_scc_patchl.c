
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {scalar_t__ base_addr; int * scc_regs; } ;


 scalar_t__ SCC_REG_START (struct dscc4_dev_priv*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void scc_patchl(u32 mask, u32 value, struct dscc4_dev_priv *dpriv,
   struct net_device *dev, int offset)
{
 u32 state;


 state = dpriv->scc_regs[offset >> 2];
 state &= ~mask;
 state |= value;
 dpriv->scc_regs[offset >> 2] = state;
 writel(state, dpriv->base_addr + SCC_REG_START(dpriv) + offset);
}
