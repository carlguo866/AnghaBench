
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixups; } ;


 int CUBOOT_INIT () ;
 int _dtb_start ;
 int fdt_init (int ) ;
 int platform_fixups ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
  unsigned long r6, unsigned long r7)
{
 CUBOOT_INIT();
 fdt_init(_dtb_start);
 serial_console_init();
 platform_ops.fixups = platform_fixups;
}
