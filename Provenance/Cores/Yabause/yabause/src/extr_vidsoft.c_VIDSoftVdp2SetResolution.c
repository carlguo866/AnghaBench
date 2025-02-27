
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int TitanSetResolution (int,int) ;
 int rbg0height ;
 int rbg0width ;
 int vdp2_interlace ;
 int vdp2_x_hires ;
 int vdp2height ;
 int vdp2width ;

void VIDSoftVdp2SetResolution(u16 TVMD)
{



   switch (TVMD & 0x7)
   {
      case 0:
         rbg0width = vdp2width = 320;
         break;
      case 1:
         rbg0width = vdp2width = 352;
         break;
      case 2:
         vdp2width = 640;
         rbg0width = 320;
         break;
      case 3:
         vdp2width = 704;
         rbg0width = 352;
         break;
      case 4:
         rbg0width = vdp2width = 320;
         break;
      case 5:
         rbg0width = vdp2width = 352;
         break;
      case 6:
         vdp2width = 640;
         rbg0width = 320;
         break;
      case 7:
         vdp2width = 704;
         rbg0width = 352;
         break;
   }

   if ((vdp2width == 704) || (vdp2width == 640))
      vdp2_x_hires = 1;
   else
      vdp2_x_hires = 0;


   switch ((TVMD >> 4) & 0x3)
   {
      case 0:
         rbg0height = vdp2height = 224;
         break;
      case 1:
         rbg0height = vdp2height = 240;
         break;
      case 2:
         rbg0height = vdp2height = 256;
         break;
      default: break;
   }


   switch ((TVMD >> 6) & 0x3)
   {
      case 3:
         vdp2height *= 2;
         vdp2_interlace=1;
         break;
      case 2:
      case 0:
      default:
         vdp2_interlace = 0;
         break;
   }

   TitanSetResolution(vdp2width, vdp2height);
}
