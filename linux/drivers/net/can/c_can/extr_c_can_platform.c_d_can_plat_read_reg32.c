
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {scalar_t__* regs; scalar_t__ base; } ;
typedef enum reg { ____Placeholder_reg } reg ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 d_can_plat_read_reg32(const struct c_can_priv *priv, enum reg index)
{
 return readl(priv->base + priv->regs[index]);
}
