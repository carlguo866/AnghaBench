
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int end_time; } ;


 TYPE_1__ current_license ;

TimestampTz
license_end_time(void)
{
 return current_license.end_time;
}
