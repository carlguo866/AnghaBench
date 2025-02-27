
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct lp8788_charger {int lp; } ;


 int LP8788_BAD_BATT_M ;
 int LP8788_CHG_STATUS ;
 int LP8788_NO_BATT_M ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int lp8788_read_byte (int ,int ,int*) ;

__attribute__((used)) static int lp8788_get_battery_health(struct lp8788_charger *pchg,
    union power_supply_propval *val)
{
 u8 data;
 int ret;

 ret = lp8788_read_byte(pchg->lp, LP8788_CHG_STATUS, &data);
 if (ret)
  return ret;

 if (data & LP8788_NO_BATT_M)
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
 else if (data & LP8788_BAD_BATT_M)
  val->intval = POWER_SUPPLY_HEALTH_DEAD;
 else
  val->intval = POWER_SUPPLY_HEALTH_GOOD;

 return 0;
}
