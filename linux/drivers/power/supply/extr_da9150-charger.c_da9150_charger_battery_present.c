
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;


 int DA9150_CHG_STAT_BAT ;
 int DA9150_CHG_STAT_MASK ;
 int DA9150_STATUS_J ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_present(struct da9150_charger *charger,
       union power_supply_propval *val)
{
 u8 reg;


 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_J);
 if ((reg & DA9150_CHG_STAT_MASK) == DA9150_CHG_STAT_BAT)
  val->intval = 0;
 else
  val->intval = 1;

 return 0;
}
