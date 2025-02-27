
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int reg_sram ;
typedef int reg_flash ;
typedef int fpga ;


 int fatal (char*) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,...) ;
 int in_8 (int*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void walnut_flashsel_fixup(void)
{
 void *devp, *sram;
 u32 reg_flash[3] = {0x0, 0x0, 0x80000};
 u32 reg_sram[3] = {0x0, 0x0, 0x80000};
 u8 *fpga;
 u8 fpga_brds1 = 0x0;

 devp = finddevice("/plb/ebc/fpga");
 if (!devp)
  fatal("Couldn't locate FPGA node\n\r");

 if (getprop(devp, "virtual-reg", &fpga, sizeof(fpga)) != sizeof(fpga))
  fatal("no virtual-reg property\n\r");

 fpga_brds1 = in_8(fpga);

 devp = finddevice("/plb/ebc/flash");
 if (!devp)
  fatal("Couldn't locate flash node\n\r");

 if (getprop(devp, "reg", reg_flash, sizeof(reg_flash)) != sizeof(reg_flash))
  fatal("flash reg property has unexpected size\n\r");

 sram = finddevice("/plb/ebc/sram");
 if (!sram)
  fatal("Couldn't locate sram node\n\r");

 if (getprop(sram, "reg", reg_sram, sizeof(reg_sram)) != sizeof(reg_sram))
  fatal("sram reg property has unexpected size\n\r");

 if (fpga_brds1 & 0x1) {
  reg_flash[1] ^= 0x80000;
  reg_sram[1] ^= 0x80000;
 }

 setprop(devp, "reg", reg_flash, sizeof(reg_flash));
 setprop(sram, "reg", reg_sram, sizeof(reg_sram));
}
