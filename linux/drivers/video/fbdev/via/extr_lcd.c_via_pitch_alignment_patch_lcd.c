
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR13 ;
 int CR35 ;
 int CR65 ;
 int CR66 ;
 int CR67 ;
 int IGA2 ;
 int VIACR ;
 int viafb_read_reg (int ,int ) ;
 int viafb_write_reg (int ,int ,unsigned char) ;

__attribute__((used)) static void via_pitch_alignment_patch_lcd(int iga_path, int hres, int bpp)
{
 unsigned char cr13, cr35, cr65, cr66, cr67;
 unsigned long dwScreenPitch = 0;
 unsigned long dwPitch;

 dwPitch = hres * (bpp >> 3);
 if (dwPitch & 0x1F) {
  dwScreenPitch = ((dwPitch + 31) & ~31) >> 3;
  if (iga_path == IGA2) {
   if (bpp > 8) {
    cr66 = (unsigned char)(dwScreenPitch & 0xFF);
    viafb_write_reg(CR66, VIACR, cr66);
    cr67 = viafb_read_reg(VIACR, CR67) & 0xFC;
    cr67 |=
        (unsigned
         char)((dwScreenPitch & 0x300) >> 8);
    viafb_write_reg(CR67, VIACR, cr67);
   }


   cr67 = viafb_read_reg(VIACR, CR67) & 0xF3;
   cr67 |= (unsigned char)((dwScreenPitch & 0x600) >> 7);
   viafb_write_reg(CR67, VIACR, cr67);
   cr65 = (unsigned char)((dwScreenPitch >> 1) & 0xFF);
   cr65 += 2;
   viafb_write_reg(CR65, VIACR, cr65);
  } else {
   if (bpp > 8) {
    cr13 = (unsigned char)(dwScreenPitch & 0xFF);
    viafb_write_reg(CR13, VIACR, cr13);
    cr35 = viafb_read_reg(VIACR, CR35) & 0x1F;
    cr35 |=
        (unsigned
         char)((dwScreenPitch & 0x700) >> 3);
    viafb_write_reg(CR35, VIACR, cr35);
   }
  }
 }
}
