
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int peak; } ;
struct as3645a {scalar_t__ strobe_source; TYPE_1__ cfg; } ;
typedef enum as_mode { ____Placeholder_as_mode } as_mode ;


 int AS_CONTROL_COIL_PEAK_SHIFT ;
 int AS_CONTROL_OUT_ON ;
 int AS_CONTROL_REG ;
 int AS_CONTROL_STROBE_ON ;
 int AS_CONTROL_STROBE_TYPE_LEVEL ;
 int AS_MODE_FLASH ;
 scalar_t__ V4L2_FLASH_STROBE_SOURCE_EXTERNAL ;
 int as3645a_write (struct as3645a*,int ,int) ;

__attribute__((used)) static int
as3645a_set_control(struct as3645a *flash, enum as_mode mode, bool on)
{
 u8 reg;


 reg = (flash->cfg.peak << AS_CONTROL_COIL_PEAK_SHIFT)
     | (on ? AS_CONTROL_OUT_ON : 0)
     | mode;

 if (mode == AS_MODE_FLASH &&
     flash->strobe_source == V4L2_FLASH_STROBE_SOURCE_EXTERNAL)
  reg |= AS_CONTROL_STROBE_TYPE_LEVEL
      | AS_CONTROL_STROBE_ON;

 return as3645a_write(flash, AS_CONTROL_REG, reg);
}
