
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {int SiS_VBType; int SiS_VBInfo; scalar_t__ ChipType; int SiS_LCDInfo; int SiS_TVMode; scalar_t__ SiS_IF_DEF_CH70xx; TYPE_1__* SiS_RefIndex; } ;
struct TYPE_2__ {unsigned short ModeID; unsigned short Ext_InfoFlag; } ;


 int DontExpandLCD ;
 int LCDPass11 ;
 scalar_t__ SIS_315H ;
 int SetCRT2ToAVIDEO ;
 int SetCRT2ToHiVision ;
 int SetCRT2ToLCD ;
 int SetCRT2ToLCDA ;
 int SetCRT2ToRAMDAC ;
 int SetCRT2ToSCART ;
 int SetCRT2ToSVIDEO ;
 int SetCRT2ToTV ;
 int SetCRT2ToYPbPr525750 ;
 unsigned short Support64048060Hz ;
 unsigned short SupportCHTV ;
 unsigned short SupportHiVision ;
 unsigned short SupportLCD ;
 unsigned short SupportRAMDAC2 ;
 unsigned short SupportRAMDAC2_135 ;
 unsigned short SupportRAMDAC2_162 ;
 unsigned short SupportRAMDAC2_202 ;
 unsigned short SupportTV ;
 unsigned short SupportTV1024 ;
 unsigned short SupportYPbPr750p ;
 int TVSetYPbPr750p ;
 int VB_SIS30xBLV ;
 int VB_SISRAMDAC202 ;
 int VB_SISVB ;

__attribute__((used)) static bool
SiS_AdjustCRT2Rate(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
  unsigned short RRTI, unsigned short *i)
{
   unsigned short checkmask=0, modeid, infoflag;

   modeid = SiS_Pr->SiS_RefIndex[RRTI + (*i)].ModeID;

   if(SiS_Pr->SiS_VBType & VB_SISVB) {

      if(SiS_Pr->SiS_VBInfo & SetCRT2ToRAMDAC) {

  checkmask |= SupportRAMDAC2;
  if(SiS_Pr->ChipType >= SIS_315H) {
     checkmask |= SupportRAMDAC2_135;
     if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
        checkmask |= SupportRAMDAC2_162;
        if(SiS_Pr->SiS_VBType & VB_SISRAMDAC202) {
    checkmask |= SupportRAMDAC2_202;
        }
     }
  }

      } else if(SiS_Pr->SiS_VBInfo & (SetCRT2ToLCD | SetCRT2ToLCDA)) {

  checkmask |= SupportLCD;
  if(SiS_Pr->ChipType >= SIS_315H) {
     if(SiS_Pr->SiS_VBType & VB_SISVB) {
        if((SiS_Pr->SiS_LCDInfo & DontExpandLCD) && (SiS_Pr->SiS_LCDInfo & LCDPass11)) {
           if(modeid == 0x2e) checkmask |= Support64048060Hz;
        }
     }
  }

      } else if(SiS_Pr->SiS_VBInfo & SetCRT2ToHiVision) {

  checkmask |= SupportHiVision;

      } else if(SiS_Pr->SiS_VBInfo & (SetCRT2ToYPbPr525750|SetCRT2ToAVIDEO|SetCRT2ToSVIDEO|SetCRT2ToSCART)) {

  checkmask |= SupportTV;
  if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
     checkmask |= SupportTV1024;
     if(SiS_Pr->SiS_VBInfo & SetCRT2ToYPbPr525750) {
        if(SiS_Pr->SiS_TVMode & TVSetYPbPr750p) {
           checkmask |= SupportYPbPr750p;
        }
     }
  }

      }

   } else {

      if(SiS_Pr->SiS_IF_DEF_CH70xx != 0) {
  if(SiS_Pr->SiS_VBInfo & SetCRT2ToTV) {
     checkmask |= SupportCHTV;
  }
      }

      if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) {
  checkmask |= SupportLCD;
      }

   }


   for(; SiS_Pr->SiS_RefIndex[RRTI + (*i)].ModeID == modeid; (*i)--) {
      infoflag = SiS_Pr->SiS_RefIndex[RRTI + (*i)].Ext_InfoFlag;
      if(infoflag & checkmask) return 1;
      if((*i) == 0) break;
   }




   for((*i) = 0; ; (*i)++) {
      if(SiS_Pr->SiS_RefIndex[RRTI + (*i)].ModeID != modeid) break;
      infoflag = SiS_Pr->SiS_RefIndex[RRTI + (*i)].Ext_InfoFlag;
      if(infoflag & checkmask) return 1;
   }
   return 0;
}
