
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_SetRegByte (struct SiS_Private*,unsigned long,unsigned short) ;

__attribute__((used)) static void
SiS_WriteDAC(struct SiS_Private *SiS_Pr, unsigned long DACData,
      unsigned short shiftflag, unsigned short dl, unsigned short ah,
      unsigned short al, unsigned short dh)
{
 unsigned short d1, d2, d3;

 switch (dl) {
 case 0:
  d1 = dh;
  d2 = ah;
  d3 = al;
  break;
 case 1:
  d1 = ah;
  d2 = al;
  d3 = dh;
  break;
 default:
  d1 = al;
  d2 = dh;
  d3 = ah;
 }
 SiS_SetRegByte(SiS_Pr, DACData, (d1 << shiftflag));
 SiS_SetRegByte(SiS_Pr, DACData, (d2 << shiftflag));
 SiS_SetRegByte(SiS_Pr, DACData, (d3 << shiftflag));
}
