
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* regmap_entry; } ;


 scalar_t__ CCREG ;
 int CLOCK_DIVIDER ;
 size_t HOST_CCREG ;
 int HOST_REGS ;
 scalar_t__ TEMPREG ;
 int* ccadj ;
 int emit_addimm (size_t,int,size_t) ;
 int emit_loadreg (scalar_t__,int) ;
 int emit_storereg (scalar_t__,size_t) ;
 scalar_t__* is_ds ;
 TYPE_1__* regs ;

void load_regs_entry(int t)
{
  int hr;
  if(is_ds[t]) emit_addimm(HOST_CCREG,CLOCK_DIVIDER,HOST_CCREG);
  else if(ccadj[t]) emit_addimm(HOST_CCREG,-ccadj[t]*CLOCK_DIVIDER,HOST_CCREG);
  if(regs[t].regmap_entry[HOST_CCREG]!=CCREG) {
    emit_storereg(CCREG,HOST_CCREG);
  }

  for(hr=0;hr<HOST_REGS;hr++) {
    if(regs[t].regmap_entry[hr]>=0&&regs[t].regmap_entry[hr]<TEMPREG) {
      if(regs[t].regmap_entry[hr]!=CCREG)
      {
        emit_loadreg(regs[t].regmap_entry[hr],hr);
      }
    }
  }
}
