
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_i2s_out {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void img_i2s_out_writel(struct img_i2s_out *i2s, u32 val,
     u32 reg)
{
 writel(val, i2s->base + reg);
}
