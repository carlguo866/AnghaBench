
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gxfb_par {scalar_t__ vid_regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void write_vp(struct gxfb_par *par, int reg, uint32_t val)
{
 writel(val, par->vid_regs + 8*reg);
}
