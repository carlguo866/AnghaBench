
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int version; int length; int checksum; int opCapFlags; int eepMisc; int* regDmn; int* macAddr; int rxMask; int txMask; int rfSilent; int blueToothOptions; int deviceCap; int binBuildNumber; int deviceType; int txGainType; } ;
struct TYPE_4__ {TYPE_3__ baseEepHeader; } ;
struct TYPE_5__ {TYPE_1__ ee_base; } ;
typedef TYPE_2__ HAL_EEPROM_v4k ;
typedef TYPE_3__ BASE_EEP4K_HEADER ;


 int printf (char*,int,int,int,...) ;

void
eeprom_v4k_base_print(uint16_t *buf)
{
 HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
 BASE_EEP4K_HEADER *eh = &eep->ee_base.baseEepHeader;

 printf("| Version: 0x%.4x   | Length: 0x%.4x | Checksum: 0x%.4x ",
     eh->version, eh->length, eh->checksum);
 printf("| CapFlags: 0x%.2x  | eepMisc: 0x%.2x | RegDomain: 0x%.4x 0x%.4x | \n",
     eh->opCapFlags, eh->eepMisc, eh->regDmn[0], eh->regDmn[1]);
 printf("| MAC: %.2x:%.2x:%.2x:%.2x:%.2x:%.2x ",
     eh->macAddr[0], eh->macAddr[1], eh->macAddr[2],
     eh->macAddr[3], eh->macAddr[4], eh->macAddr[5]);
 printf("| RxMask: 0x%.2x | TxMask: 0x%.2x | RfSilent: 0x%.4x | btOptions: 0x%.4x |\n",
     eh->rxMask, eh->txMask, eh->rfSilent, eh->blueToothOptions);
 printf("| DeviceCap: 0x%.4x | binBuildNumber: %.8x | deviceType: 0x%.2x | txGainType 0x%.2x |\n",
     eh->deviceCap, eh->binBuildNumber, eh->deviceType, eh->txGainType);
}
