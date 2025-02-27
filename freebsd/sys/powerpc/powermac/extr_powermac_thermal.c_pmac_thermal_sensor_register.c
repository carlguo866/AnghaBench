
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_therm {int dummy; } ;
struct pmac_sens_le {scalar_t__ critical_count; scalar_t__ last_val; struct pmac_therm* sensor; } ;


 int M_PMACTHERM ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct pmac_sens_le*,int ) ;
 int entries ;
 struct pmac_sens_le* malloc (int,int ,int) ;
 int sensors ;

void
pmac_thermal_sensor_register(struct pmac_therm *sensor)
{
 struct pmac_sens_le *list_entry;

 list_entry = malloc(sizeof(struct pmac_sens_le), M_PMACTHERM,
     M_ZERO | M_WAITOK);
 list_entry->sensor = sensor;
 list_entry->last_val = 0;
 list_entry->critical_count = 0;

 SLIST_INSERT_HEAD(&sensors, list_entry, entries);
}
