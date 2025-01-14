
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ h; scalar_t__ i; scalar_t__ s; scalar_t__ us; scalar_t__ y; scalar_t__ m; scalar_t__ d; scalar_t__ z; scalar_t__ dst; scalar_t__ zone_type; int is_localtime; int * tz_info; int * tz_abbr; int have_time; scalar_t__ have_date; } ;
typedef TYPE_1__ timelib_time ;


 int TIMELIB_NO_CLONE ;
 int TIMELIB_OVERRIDE_TIME ;
 scalar_t__ TIMELIB_UNSET ;
 int * timelib_strdup (int *) ;
 int * timelib_tzinfo_clone (int *) ;

void timelib_fill_holes(timelib_time *parsed, timelib_time *now, int options)
{
 if (!(options & TIMELIB_OVERRIDE_TIME) && parsed->have_date && !parsed->have_time) {
  parsed->h = 0;
  parsed->i = 0;
  parsed->s = 0;
  parsed->us = 0;
 }
 if (
  parsed->y != TIMELIB_UNSET || parsed->m != TIMELIB_UNSET || parsed->d != TIMELIB_UNSET ||
  parsed->h != TIMELIB_UNSET || parsed->i != TIMELIB_UNSET || parsed->s != TIMELIB_UNSET
 ) {
  if (parsed->us == TIMELIB_UNSET) parsed->us = 0;
 } else {
  if (parsed->us == TIMELIB_UNSET) parsed->us = now->us != TIMELIB_UNSET ? now->us : 0;
 }
 if (parsed->y == TIMELIB_UNSET) parsed->y = now->y != TIMELIB_UNSET ? now->y : 0;
 if (parsed->m == TIMELIB_UNSET) parsed->m = now->m != TIMELIB_UNSET ? now->m : 0;
 if (parsed->d == TIMELIB_UNSET) parsed->d = now->d != TIMELIB_UNSET ? now->d : 0;
 if (parsed->h == TIMELIB_UNSET) parsed->h = now->h != TIMELIB_UNSET ? now->h : 0;
 if (parsed->i == TIMELIB_UNSET) parsed->i = now->i != TIMELIB_UNSET ? now->i : 0;
 if (parsed->s == TIMELIB_UNSET) parsed->s = now->s != TIMELIB_UNSET ? now->s : 0;
 if (parsed->z == TIMELIB_UNSET) parsed->z = now->z != TIMELIB_UNSET ? now->z : 0;
 if (parsed->dst == TIMELIB_UNSET) parsed->dst = now->dst != TIMELIB_UNSET ? now->dst : 0;

 if (!parsed->tz_abbr) {
  parsed->tz_abbr = now->tz_abbr ? timelib_strdup(now->tz_abbr) : ((void*)0);
 }
 if (!parsed->tz_info) {
  parsed->tz_info = now->tz_info ? (!(options & TIMELIB_NO_CLONE) ? timelib_tzinfo_clone(now->tz_info) : now->tz_info) : ((void*)0);
 }
 if (parsed->zone_type == 0 && now->zone_type != 0) {
  parsed->zone_type = now->zone_type;


    parsed->is_localtime = 1;
 }



}
