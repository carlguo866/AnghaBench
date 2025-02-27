
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_SCR ;
 int AR_SCR_SLE ;
 int AR_SCR_SLE_SLP ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

__attribute__((used)) static void
ar5212SetPowerModeSleep(struct ath_hal *ah, int setChip)
{
 OS_REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
 if (setChip)
  OS_REG_RMW_FIELD(ah, AR_SCR, AR_SCR_SLE, AR_SCR_SLE_SLP);
}
