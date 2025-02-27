
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct gb_power_supply {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int dev; } ;


 int __gb_power_supply_property_get (struct gb_power_supply*,int,union power_supply_propval*) ;
 int __gb_power_supply_property_strval_get (struct gb_power_supply*,int,union power_supply_propval*) ;
 int dev_err (int *,char*,int) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 scalar_t__ is_prop_valint (int) ;

__attribute__((used)) static int _gb_power_supply_property_get(struct gb_power_supply *gbpsy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 int ret;





 if (is_prop_valint(psp))
  ret = __gb_power_supply_property_get(gbpsy, psp, val);
 else
  ret = __gb_power_supply_property_strval_get(gbpsy, psp, val);

 if (ret < 0)
  dev_err(&connection->bundle->dev, "get property %u\n", psp);

 return 0;
}
