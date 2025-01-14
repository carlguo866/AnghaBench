
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_PrepareDDC (struct SiS_Private*) ;
 scalar_t__ SiS_ReadDDC2Data (struct SiS_Private*) ;
 int SiS_SendACK (struct SiS_Private*,int) ;
 int SiS_SetStop (struct SiS_Private*) ;
 int SiS_SetSwitchDDC2 (struct SiS_Private*) ;

__attribute__((used)) static
unsigned short
SiS_ReadDDC(struct SiS_Private *SiS_Pr, unsigned short DDCdatatype, unsigned char *buffer)
{
   unsigned short flag, length, i;
   unsigned char chksum,gotcha;

   if(DDCdatatype > 4) return 0xFFFF;

   flag = 0;
   SiS_SetSwitchDDC2(SiS_Pr);
   if(!(SiS_PrepareDDC(SiS_Pr))) {
      length = 127;
      if(DDCdatatype != 1) length = 255;
      chksum = 0;
      gotcha = 0;
      for(i=0; i<length; i++) {
  buffer[i] = (unsigned char)SiS_ReadDDC2Data(SiS_Pr);
  chksum += buffer[i];
  gotcha |= buffer[i];
  SiS_SendACK(SiS_Pr, 0);
      }
      buffer[i] = (unsigned char)SiS_ReadDDC2Data(SiS_Pr);
      chksum += buffer[i];
      SiS_SendACK(SiS_Pr, 1);
      if(gotcha) flag = (unsigned short)chksum;
      else flag = 0xFFFF;
   } else {
      flag = 0xFFFF;
   }
   SiS_SetStop(SiS_Pr);
   return flag;
}
