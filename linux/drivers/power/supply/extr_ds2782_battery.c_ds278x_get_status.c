
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds278x_info {int capacity; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_battery_current ) (struct ds278x_info*,int*) ;int (* get_battery_capacity ) (struct ds278x_info*,int*) ;} ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int stub1 (struct ds278x_info*,int*) ;
 int stub2 (struct ds278x_info*,int*) ;

__attribute__((used)) static int ds278x_get_status(struct ds278x_info *info, int *status)
{
 int err;
 int current_uA;
 int capacity;

 err = info->ops->get_battery_current(info, &current_uA);
 if (err)
  return err;

 err = info->ops->get_battery_capacity(info, &capacity);
 if (err)
  return err;

 info->capacity = capacity;

 if (capacity == 100)
  *status = POWER_SUPPLY_STATUS_FULL;
 else if (current_uA == 0)
  *status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 else if (current_uA < 0)
  *status = POWER_SUPPLY_STATUS_DISCHARGING;
 else
  *status = POWER_SUPPLY_STATUS_CHARGING;

 return 0;
}
