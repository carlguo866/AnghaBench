
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hal_data_8188e {scalar_t__ EEPROMCustomerID; scalar_t__ EEPROMSubCustomerID; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int DBG_88E (char*,scalar_t__) ;
 size_t EEPROM_CUSTOMERID_88E ;

void Hal_EfuseParseCustomerID88E(struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail)
{
 struct hal_data_8188e *pHalData = padapter->HalData;

 if (!AutoLoadFail) {
  pHalData->EEPROMCustomerID = hwinfo[EEPROM_CUSTOMERID_88E];
 } else {
  pHalData->EEPROMCustomerID = 0;
  pHalData->EEPROMSubCustomerID = 0;
 }
 DBG_88E("EEPROM Customer ID: 0x%2x\n", pHalData->EEPROMCustomerID);
}
