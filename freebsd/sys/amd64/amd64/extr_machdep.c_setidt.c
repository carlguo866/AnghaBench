
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gate_descriptor {uintptr_t gd_looffset; int gd_ist; int gd_type; int gd_dpl; int gd_p; uintptr_t gd_hioffset; scalar_t__ gd_xx; int gd_selector; } ;
typedef int inthand_t ;


 int GCODE_SEL ;
 int GSEL (int ,int ) ;
 int SEL_KPL ;
 struct gate_descriptor* idt ;

void
setidt(int idx, inthand_t *func, int typ, int dpl, int ist)
{
 struct gate_descriptor *ip;

 ip = idt + idx;
 ip->gd_looffset = (uintptr_t)func;
 ip->gd_selector = GSEL(GCODE_SEL, SEL_KPL);
 ip->gd_ist = ist;
 ip->gd_xx = 0;
 ip->gd_type = typ;
 ip->gd_dpl = dpl;
 ip->gd_p = 1;
 ip->gd_hioffset = ((uintptr_t)func)>>16 ;
}
