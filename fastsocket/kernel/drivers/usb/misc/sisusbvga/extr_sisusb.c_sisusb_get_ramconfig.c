
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sisusb_usb_data {int vramsize; TYPE_1__* sisusb_dev; } ;
struct TYPE_2__ {int dev; } ;


 int SISSR ;
 int dev_info (int *,char*,int,char*,char const*,int) ;
 int sisusb_getidxreg (struct sisusb_usb_data*,int ,int,int*) ;

__attribute__((used)) static void
sisusb_get_ramconfig(struct sisusb_usb_data *sisusb)
{
 u8 tmp8, tmp82, ramtype;
 int bw = 0;
 char *ramtypetext1 = ((void*)0);
 const char *ramtypetext2[] = { "SDR SDRAM", "SDR SGRAM",
     "DDR SDRAM", "DDR SGRAM" };
 static const int busSDR[4] = {64, 64, 128, 128};
 static const int busDDR[4] = {32, 32, 64, 64};
 static const int busDDRA[4] = {64+32, 64+32 , (64+32)*2, (64+32)*2};

 sisusb_getidxreg(sisusb, SISSR, 0x14, &tmp8);
 sisusb_getidxreg(sisusb, SISSR, 0x15, &tmp82);
 sisusb_getidxreg(sisusb, SISSR, 0x3a, &ramtype);
 sisusb->vramsize = (1 << ((tmp8 & 0xf0) >> 4)) * 1024 * 1024;
 ramtype &= 0x03;
 switch ((tmp8 >> 2) & 0x03) {
 case 0: ramtypetext1 = "1 ch/1 r";
  if (tmp82 & 0x10) {
   bw = 32;
  } else {
   bw = busSDR[(tmp8 & 0x03)];
  }
  break;
 case 1: ramtypetext1 = "1 ch/2 r";
  sisusb->vramsize <<= 1;
  bw = busSDR[(tmp8 & 0x03)];
  break;
 case 2: ramtypetext1 = "asymmeric";
  sisusb->vramsize += sisusb->vramsize/2;
  bw = busDDRA[(tmp8 & 0x03)];
  break;
 case 3: ramtypetext1 = "2 channel";
  sisusb->vramsize <<= 1;
  bw = busDDR[(tmp8 & 0x03)];
  break;
 }

 dev_info(&sisusb->sisusb_dev->dev, "%dMB %s %s, bus width %d\n", (sisusb->vramsize >> 20), ramtypetext1,
   ramtypetext2[ramtype], bw);
}
