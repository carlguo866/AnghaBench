
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lxfb_par {scalar_t__ vp_regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void write_vp(struct lxfb_par *par, int reg, uint32_t val)
{
 writel(val, par->vp_regs + 8*reg);
}
