
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_7__ {int slope; scalar_t__ offset; } ;
struct TYPE_9__ {unsigned int control_id; size_t ref_id; TYPE_2__ correction; } ;
struct TYPE_8__ {int name; TYPE_1__* ops; } ;
struct TYPE_6__ {int (* get_value ) (TYPE_3__*,int*) ;} ;


 TYPE_3__** controls ;
 int max (int,int) ;
 TYPE_4__* pm121_connection ;
 int pr_debug (char*,int ,int ,int,int) ;
 int stub1 (TYPE_3__*,int*) ;

__attribute__((used)) static s32 pm121_connect(unsigned int control_id, s32 setpoint)
{
 s32 new_min, value, new_setpoint;

 if (pm121_connection->control_id == control_id) {
  controls[control_id]->ops->get_value(controls[control_id],
           &value);
  new_min = value * pm121_connection->correction.slope;
  new_min += pm121_connection->correction.offset;
  if (new_min > 0) {
   new_setpoint = max(setpoint, (new_min >> 16));
   if (new_setpoint != setpoint) {
    pr_debug("pm121: %s depending on %s, "
      "corrected from %d to %d RPM\n",
      controls[control_id]->name,
      controls[pm121_connection->ref_id]->name,
      (int) setpoint, (int) new_setpoint);
   }
  } else
   new_setpoint = setpoint;
 }

 else
  new_setpoint = setpoint;

 return new_setpoint;
}
