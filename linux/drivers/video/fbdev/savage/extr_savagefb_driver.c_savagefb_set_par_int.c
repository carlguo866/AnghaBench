
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {scalar_t__ chip; int (* SavageWaitIdle ) (struct savagefb_par*) ;} ;
struct savage_reg {unsigned char CR66; unsigned char CR3A; unsigned char CR31; unsigned char CR32; unsigned char CR58; int CR53; unsigned char SR0E; unsigned char SR0F; unsigned char SR29; unsigned char SR15; unsigned char* SR54; unsigned char CR5D; unsigned char CR5E; unsigned char CR3B; unsigned char CR3C; unsigned char CR43; unsigned char CR65; int CR67; unsigned char CR34; unsigned char CR40; unsigned char CR42; unsigned char CR45; unsigned char CR50; unsigned char CR51; unsigned char CR36; unsigned char CR60; unsigned char CR68; unsigned char CR69; unsigned char CR6F; unsigned char CR33; unsigned char CR86; unsigned char CR88; unsigned char CR90; unsigned char CR91; unsigned char CRB0; int SR10; unsigned char SR11; unsigned char SR12; unsigned char SR13; unsigned char SR18; unsigned char SR30; unsigned char SR08; int MMPR3; int MMPR2; int MMPR1; int MMPR0; } ;


 int DBG (char*) ;
 int FIFO_CONTROL_REG ;
 int MISC_TIMEOUT_REG ;
 int MIU_CONTROL_REG ;
 scalar_t__ S3_SAVAGE4 ;
 scalar_t__ S3_SAVAGE_MX ;
 int STREAMS_TIMEOUT_REG ;
 int SavageSetup2DEngine (struct savagefb_par*) ;
 int VerticalRetraceWait (struct savagefb_par*) ;
 int mdelay (int) ;
 int savage_out32 (int ,int ,struct savagefb_par*) ;
 int stub1 (struct savagefb_par*) ;
 int stub2 (struct savagefb_par*) ;
 int stub3 (struct savagefb_par*) ;
 int stub4 (struct savagefb_par*) ;
 int udelay (int) ;
 int vgaHWProtect (struct savagefb_par*,int) ;
 int vgaHWRestore (struct savagefb_par*,struct savage_reg*) ;
 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out16 (int,int,struct savagefb_par*) ;
 int vga_out8 (int,unsigned char,struct savagefb_par*) ;

__attribute__((used)) static void savagefb_set_par_int(struct savagefb_par *par, struct savage_reg *reg)
{
 unsigned char tmp, cr3a, cr66, cr67;

 DBG("savagefb_set_par_int");

 par->SavageWaitIdle(par);

 vga_out8(0x3c2, 0x23, par);

 vga_out16(0x3d4, 0x4838, par);
 vga_out16(0x3d4, 0xa539, par);
 vga_out16(0x3c4, 0x0608, par);

 vgaHWProtect(par, 1);
 VerticalRetraceWait(par);
 vga_out8(0x3d4, 0x67, par);
 cr67 = vga_in8(0x3d5, par);
 vga_out8(0x3d5, cr67 & ~0x0c, par);

 vga_out8(0x3d4, 0x23, par);
 vga_out8(0x3d5, 0x00, par);
 vga_out8(0x3d4, 0x26, par);
 vga_out8(0x3d5, 0x00, par);


 vga_out8(0x3d4, 0x66, par);
 vga_out8(0x3d5, reg->CR66, par);
 vga_out8(0x3d4, 0x3a, par);
 vga_out8(0x3d5, reg->CR3A, par);
 vga_out8(0x3d4, 0x31, par);
 vga_out8(0x3d5, reg->CR31, par);
 vga_out8(0x3d4, 0x32, par);
 vga_out8(0x3d5, reg->CR32, par);
 vga_out8(0x3d4, 0x58, par);
 vga_out8(0x3d5, reg->CR58, par);
 vga_out8(0x3d4, 0x53, par);
 vga_out8(0x3d5, reg->CR53 & 0x7f, par);

 vga_out16(0x3c4, 0x0608, par);



 vga_out8(0x3c4, 0x0e, par);
 vga_out8(0x3c5, reg->SR0E, par);
 vga_out8(0x3c4, 0x0f, par);
 vga_out8(0x3c5, reg->SR0F, par);
 vga_out8(0x3c4, 0x29, par);
 vga_out8(0x3c5, reg->SR29, par);
 vga_out8(0x3c4, 0x15, par);
 vga_out8(0x3c5, reg->SR15, par);


 if (par->chip == S3_SAVAGE_MX) {
  int i;

  for (i = 0; i < 8; i++) {
   vga_out8(0x3c4, 0x54+i, par);
   vga_out8(0x3c5, reg->SR54[i], par);
  }
 }

 vgaHWRestore (par, reg);


 vga_out8(0x3d4, 0x53, par);
 vga_out8(0x3d5, reg->CR53, par);
 vga_out8(0x3d4, 0x5d, par);
 vga_out8(0x3d5, reg->CR5D, par);
 vga_out8(0x3d4, 0x5e, par);
 vga_out8(0x3d5, reg->CR5E, par);
 vga_out8(0x3d4, 0x3b, par);
 vga_out8(0x3d5, reg->CR3B, par);
 vga_out8(0x3d4, 0x3c, par);
 vga_out8(0x3d5, reg->CR3C, par);
 vga_out8(0x3d4, 0x43, par);
 vga_out8(0x3d5, reg->CR43, par);
 vga_out8(0x3d4, 0x65, par);
 vga_out8(0x3d5, reg->CR65, par);


 vga_out8(0x3d4, 0x67, par);

 cr67 = vga_in8(0x3d5, par) & 0xf;
 vga_out8(0x3d5, 0x50 | cr67, par);
 mdelay(10);
 vga_out8(0x3d4, 0x67, par);

 vga_out8(0x3d5, reg->CR67 & ~0x0c, par);


 vga_out8(0x3d4, 0x34, par);
 vga_out8(0x3d5, reg->CR34, par);
 vga_out8(0x3d4, 0x40, par);
 vga_out8(0x3d5, reg->CR40, par);
 vga_out8(0x3d4, 0x42, par);
 vga_out8(0x3d5, reg->CR42, par);
 vga_out8(0x3d4, 0x45, par);
 vga_out8(0x3d5, reg->CR45, par);
 vga_out8(0x3d4, 0x50, par);
 vga_out8(0x3d5, reg->CR50, par);
 vga_out8(0x3d4, 0x51, par);
 vga_out8(0x3d5, reg->CR51, par);


 vga_out8(0x3d4, 0x36, par);
 vga_out8(0x3d5, reg->CR36, par);
 vga_out8(0x3d4, 0x60, par);
 vga_out8(0x3d5, reg->CR60, par);
 vga_out8(0x3d4, 0x68, par);
 vga_out8(0x3d5, reg->CR68, par);
 vga_out8(0x3d4, 0x69, par);
 vga_out8(0x3d5, reg->CR69, par);
 vga_out8(0x3d4, 0x6f, par);
 vga_out8(0x3d5, reg->CR6F, par);

 vga_out8(0x3d4, 0x33, par);
 vga_out8(0x3d5, reg->CR33, par);
 vga_out8(0x3d4, 0x86, par);
 vga_out8(0x3d5, reg->CR86, par);
 vga_out8(0x3d4, 0x88, par);
 vga_out8(0x3d5, reg->CR88, par);
 vga_out8(0x3d4, 0x90, par);
 vga_out8(0x3d5, reg->CR90, par);
 vga_out8(0x3d4, 0x91, par);
 vga_out8(0x3d5, reg->CR91, par);

 if (par->chip == S3_SAVAGE4) {
  vga_out8(0x3d4, 0xb0, par);
  vga_out8(0x3d5, reg->CRB0, par);
 }

 vga_out8(0x3d4, 0x32, par);
 vga_out8(0x3d5, reg->CR32, par);


 vga_out8(0x3c4, 0x08, par);
 vga_out8(0x3c5, 0x06, par);




 if (reg->SR10 != 255) {
  vga_out8(0x3c4, 0x10, par);
  vga_out8(0x3c5, reg->SR10, par);
  vga_out8(0x3c4, 0x11, par);
  vga_out8(0x3c5, reg->SR11, par);
 }


 vga_out8(0x3c4, 0x0e, par);
 vga_out8(0x3c5, reg->SR0E, par);
 vga_out8(0x3c4, 0x0f, par);
 vga_out8(0x3c5, reg->SR0F, par);
 vga_out8(0x3c4, 0x12, par);
 vga_out8(0x3c5, reg->SR12, par);
 vga_out8(0x3c4, 0x13, par);
 vga_out8(0x3c5, reg->SR13, par);
 vga_out8(0x3c4, 0x29, par);
 vga_out8(0x3c5, reg->SR29, par);
 vga_out8(0x3c4, 0x18, par);
 vga_out8(0x3c5, reg->SR18, par);


 vga_out8(0x3c4, 0x15, par);
 tmp = vga_in8(0x3c5, par) & ~0x21;

 vga_out8(0x3c5, tmp | 0x03, par);
 vga_out8(0x3c5, tmp | 0x23, par);
 vga_out8(0x3c5, tmp | 0x03, par);
 vga_out8(0x3c5, reg->SR15, par);
 udelay(100);

 vga_out8(0x3c4, 0x30, par);
 vga_out8(0x3c5, reg->SR30, par);
 vga_out8(0x3c4, 0x08, par);
 vga_out8(0x3c5, reg->SR08, par);


 VerticalRetraceWait(par);
 vga_out8(0x3d4, 0x67, par);
 vga_out8(0x3d5, reg->CR67, par);

 vga_out8(0x3d4, 0x66, par);
 cr66 = vga_in8(0x3d5, par);
 vga_out8(0x3d5, cr66 | 0x80, par);
 vga_out8(0x3d4, 0x3a, par);
 cr3a = vga_in8(0x3d5, par);
 vga_out8(0x3d5, cr3a | 0x80, par);

 if (par->chip != S3_SAVAGE_MX) {
  VerticalRetraceWait(par);
  savage_out32(FIFO_CONTROL_REG, reg->MMPR0, par);
  par->SavageWaitIdle(par);
  savage_out32(MIU_CONTROL_REG, reg->MMPR1, par);
  par->SavageWaitIdle(par);
  savage_out32(STREAMS_TIMEOUT_REG, reg->MMPR2, par);
  par->SavageWaitIdle(par);
  savage_out32(MISC_TIMEOUT_REG, reg->MMPR3, par);
 }

 vga_out8(0x3d4, 0x66, par);
 vga_out8(0x3d5, cr66, par);
 vga_out8(0x3d4, 0x3a, par);
 vga_out8(0x3d5, cr3a, par);

 SavageSetup2DEngine(par);
 vgaHWProtect(par, 0);
}
