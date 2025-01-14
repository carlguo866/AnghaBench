
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tz_info {TYPE_1__* tp; int nr_trip_pts; } ;
struct TYPE_2__ {unsigned long temp; } ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int MAX_NR_TRIP ;
 unsigned long MAX_TEMP_KC ;
 int get_instance_id (char*,int,int ) ;
 int get_trip_point_data (char*,int,int) ;
 scalar_t__ strstr (char*,char*) ;
 int sysfs_get_ulong (char*,char*,unsigned long*) ;
 int syslog (int ,char*,char*,...) ;

__attribute__((used)) static int find_tzone_tp(char *tz_name, char *d_name, struct tz_info *tzi,
   int tz_id)
{
 int tp_id;
 unsigned long temp_ulong;

 if (strstr(d_name, "trip_point") &&
  strstr(d_name, "temp")) {



  sysfs_get_ulong(tz_name, d_name, &temp_ulong);
  if (temp_ulong < MAX_TEMP_KC) {
   tzi->nr_trip_pts++;

   tp_id = get_instance_id(d_name, 2, 0);
   syslog(LOG_DEBUG, "tzone %s trip %d temp %lu tpnode %s",
    tz_name, tp_id, temp_ulong, d_name);
   if (tp_id < 0 || tp_id >= MAX_NR_TRIP) {
    syslog(LOG_ERR, "Failed to find TP inst %s\n",
     d_name);
    return -1;
   }
   get_trip_point_data(tz_name, tz_id, tp_id);
   tzi->tp[tp_id].temp = temp_ulong;
  }
 }

 return 0;
}
