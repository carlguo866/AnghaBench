
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int PACB ;


 int NVRAM_trm_wait_30us (int ) ;
 int NVR_BITOUT ;
 int NVR_CLOCK ;
 int NVR_SELECT ;
 int TRMREG_GEN_NVRAM ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
NVRAM_trm_write_cmd(PACB pACB, u_int8_t bCmd, u_int8_t bAddr)
{
 int i;
 u_int8_t bSendData;

     for (i = 0; i < 3; i++, bCmd <<= 1) {



       bSendData = NVR_SELECT;
  if (bCmd & 0x04)
   bSendData |= NVR_BITOUT;

  trm_reg_write8(bSendData, TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  trm_reg_write8((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
 }
 for (i = 0; i < 7; i++, bAddr <<= 1) {



  bSendData = NVR_SELECT;
  if (bAddr & 0x40)

   bSendData |= NVR_BITOUT;
  trm_reg_write8(bSendData , TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  trm_reg_write8((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
 }
 trm_reg_write8(NVR_SELECT, TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);
}
