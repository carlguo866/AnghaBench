
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amvdec_core {scalar_t__ dos_base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

u32 amvdec_read_dos(struct amvdec_core *core, u32 reg)
{
 return readl_relaxed(core->dos_base + reg);
}
