
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct SiS_Private {unsigned short CModeFlag; unsigned short CHDisplay; scalar_t__ ChipType; int CHTotal; unsigned short SiS_VGAHDE; int CHBlankStart; int SiS_VBInfo; int CHBlankEnd; int SiS_VGAHT; int SiS_LCDInfo; short SiS_RVBHRS2; unsigned short CHSyncStart; int CHSyncEnd; int CVTotal; unsigned short SiS_VGAVDE; unsigned short CVDisplay; unsigned short CVBlankStart; int CVBlankEnd; unsigned short SiS_VGAVT; unsigned short CVSyncStart; unsigned short CVSyncEnd; int* CCRT1CRTC; int SiS_Part1Port; scalar_t__ SiS_P3ca; int SiS_P3c4; int SiS_P3d4; TYPE_3__* SiS_RefIndex; TYPE_2__* SiS_EModeIDTable; scalar_t__ UseCustomMode; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_6__ {unsigned short XRes; } ;
struct TYPE_5__ {unsigned short Ext_ModeFlag; } ;
struct TYPE_4__ {unsigned short St_ModeFlag; } ;


 unsigned short DoubleScanMode ;
 unsigned short HalfDCLK ;
 int LCDPass11 ;
 int LCDRGB18Bit ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToLCD ;
 int SetCRT2ToTV ;
 int SiS_CalcCRRegisters (struct SiS_Private*,int ) ;
 int SiS_GetReg (int ,int) ;
 unsigned short SiS_GetRegByte (scalar_t__) ;
 int SiS_SetReg (int ,unsigned short const,unsigned short) ;
 int SiS_SetRegANDOR (int ,unsigned short const,int,unsigned short) ;
 int SiS_SetRegOR (int ,int,int) ;
 int X_INFO ;
 int xf86DrvMsg (int ,int ,char*,int,...) ;

__attribute__((used)) static void
SiS_SetGroup1_301(struct SiS_Private *SiS_Pr, unsigned short ModeNo,unsigned short ModeIdIndex,
                  unsigned short RefreshRateTableIndex)
{
  unsigned short temp, modeflag, i, j, xres=0, VGAVDE;
  static const unsigned short CRTranslation[] = {

   0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a,

   0x00, 0x0b, 0x17, 0x18, 0x19, 0x00, 0x1a, 0x00,

   0x0c, 0x0d, 0x0e, 0x00, 0x0f, 0x10, 0x11, 0x00
  };

  if(ModeNo <= 0x13) {
     modeflag = SiS_Pr->SiS_SModeIDTable[ModeIdIndex].St_ModeFlag;
  } else if(SiS_Pr->UseCustomMode) {
     modeflag = SiS_Pr->CModeFlag;
     xres = SiS_Pr->CHDisplay;
  } else {
     modeflag = SiS_Pr->SiS_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
     xres = SiS_Pr->SiS_RefIndex[RefreshRateTableIndex].XRes;
  }



  if(SiS_Pr->ChipType >= SIS_315H) {
     if(xres >= 1600) {
        SiS_SetRegOR(SiS_Pr->SiS_P3c4,0x31,0x04);
     }
  }

  SiS_Pr->CHTotal = 8224;

  SiS_Pr->CHDisplay = SiS_Pr->SiS_VGAHDE;
  if(modeflag & HalfDCLK) SiS_Pr->CHDisplay >>= 1;

  SiS_Pr->CHBlankStart = SiS_Pr->CHDisplay;
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
     SiS_Pr->CHBlankStart += 16;
  }

  SiS_Pr->CHBlankEnd = 32;
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {
     if(xres == 1600) SiS_Pr->CHBlankEnd += 80;
  }

  temp = SiS_Pr->SiS_VGAHT - 96;
  if(!(modeflag & HalfDCLK)) temp -= 32;
  if(SiS_Pr->SiS_LCDInfo & LCDPass11) {
     temp = SiS_GetReg(SiS_Pr->SiS_P3d4,0x04);
     temp |= ((SiS_GetReg(SiS_Pr->SiS_P3c4,0x0b) & 0xc0) << 2);
     temp -= 3;
     temp <<= 3;
  } else {
     if(SiS_Pr->SiS_RVBHRS2) temp = SiS_Pr->SiS_RVBHRS2;
  }
  SiS_Pr->CHSyncStart = temp;

  SiS_Pr->CHSyncEnd = 0xffe8;

  SiS_Pr->CVTotal = 2049;

  VGAVDE = SiS_Pr->SiS_VGAVDE;
  if (VGAVDE == 357) VGAVDE = 350;
  else if(VGAVDE == 360) VGAVDE = 350;
  else if(VGAVDE == 375) VGAVDE = 350;
  else if(VGAVDE == 405) VGAVDE = 400;
  else if(VGAVDE == 420) VGAVDE = 400;
  else if(VGAVDE == 525) VGAVDE = 480;
  else if(VGAVDE == 1056) VGAVDE = 1024;
  SiS_Pr->CVDisplay = VGAVDE;

  SiS_Pr->CVBlankStart = SiS_Pr->CVDisplay;

  SiS_Pr->CVBlankEnd = 1;
  if(ModeNo == 0x3c) SiS_Pr->CVBlankEnd = 226;

  temp = (SiS_Pr->SiS_VGAVT - VGAVDE) >> 1;
  SiS_Pr->CVSyncStart = VGAVDE + temp;

  temp >>= 3;
  SiS_Pr->CVSyncEnd = SiS_Pr->CVSyncStart + temp;

  SiS_CalcCRRegisters(SiS_Pr, 0);
  SiS_Pr->CCRT1CRTC[16] &= ~0xE0;

  for(i = 0; i <= 7; i++) {
     SiS_SetReg(SiS_Pr->SiS_Part1Port,CRTranslation[i],SiS_Pr->CCRT1CRTC[i]);
  }
  for(i = 0x10, j = 8; i <= 0x12; i++, j++) {
     SiS_SetReg(SiS_Pr->SiS_Part1Port,CRTranslation[i],SiS_Pr->CCRT1CRTC[j]);
  }
  for(i = 0x15, j = 11; i <= 0x16; i++, j++) {
     SiS_SetReg(SiS_Pr->SiS_Part1Port,CRTranslation[i],SiS_Pr->CCRT1CRTC[j]);
  }
  for(i = 0x0a, j = 13; i <= 0x0c; i++, j++) {
     SiS_SetReg(SiS_Pr->SiS_Part1Port,CRTranslation[i],SiS_Pr->CCRT1CRTC[j]);
  }

  temp = SiS_Pr->CCRT1CRTC[16] & 0xE0;
  SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,CRTranslation[0x0E],0x1F,temp);

  temp = (SiS_Pr->CCRT1CRTC[16] & 0x01) << 5;
  if(modeflag & DoubleScanMode) temp |= 0x80;
  SiS_SetRegANDOR(SiS_Pr->SiS_Part1Port,CRTranslation[0x09],0x5F,temp);

  temp = 0;
  temp |= (SiS_GetReg(SiS_Pr->SiS_P3c4,0x01) & 0x01);
  if(modeflag & HalfDCLK) temp |= 0x08;
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x16,temp);

  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x0F,0x00);
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x12,0x00);

  temp = 0;
  if(SiS_Pr->SiS_LCDInfo & LCDRGB18Bit) {
     temp = (SiS_GetReg(SiS_Pr->SiS_Part1Port,0x00) & 0x01) << 7;
  }
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1A,temp);

  temp = SiS_GetRegByte((SiS_Pr->SiS_P3ca+0x02));
  SiS_SetReg(SiS_Pr->SiS_Part1Port,0x1b,temp);
}
