
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_10__ {TYPE_4__* ah_eeprom; } ;
struct TYPE_7__ {TYPE_1__* spurChans; } ;
struct TYPE_8__ {TYPE_2__ modalHeader; } ;
struct TYPE_9__ {TYPE_3__ ee_base; } ;
struct TYPE_6__ {int spurChan; } ;
typedef TYPE_4__ HAL_EEPROM_9287 ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_5__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR5416_EEPROM_MODAL_SPURS ;
 int HALASSERT (int) ;

__attribute__((used)) static uint16_t
v9287EepromGetSpurChan(struct ath_hal *ah, int ix, HAL_BOOL is2GHz)
{
 HAL_EEPROM_9287 *ee = AH_PRIVATE(ah)->ah_eeprom;

 HALASSERT(is2GHz == AH_TRUE);
 if (is2GHz != AH_TRUE)
  return 0;

 HALASSERT(0 <= ix && ix < AR5416_EEPROM_MODAL_SPURS);
 return ee->ee_base.modalHeader.spurChans[ix].spurChan;
}
