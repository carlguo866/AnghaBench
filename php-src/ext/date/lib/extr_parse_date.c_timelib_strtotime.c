
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int timelib_tzdb ;
typedef int timelib_tz_get_wrapper ;
struct TYPE_14__ {void* days; } ;
struct TYPE_15__ {void* d; void* m; void* y; scalar_t__ have_date; void* s; void* i; void* h; scalar_t__ have_time; TYPE_1__ relative; scalar_t__ zone_type; scalar_t__ is_localtime; void* dst; void* z; void* us; } ;
typedef TYPE_2__ timelib_time ;
struct TYPE_16__ {int * error_messages; scalar_t__ error_count; int * warning_messages; scalar_t__ warning_count; } ;
typedef TYPE_3__ timelib_error_container ;
typedef int in ;
struct TYPE_17__ {TYPE_2__* time; TYPE_3__* errors; struct TYPE_17__* str; int const* tzdb; struct TYPE_17__* cur; struct TYPE_17__* lim; } ;
typedef TYPE_4__ Scanner ;


 int EOI ;
 int TIMELIB_ERR_EMPTY_STRING ;
 void* TIMELIB_UNSET ;
 int TIMELIB_WARN_INVALID_DATE ;
 int TIMELIB_WARN_INVALID_TIME ;
 int YYMAXFILL ;
 int add_error (TYPE_4__*,int ,char*) ;
 int add_warning (TYPE_4__*,int ,char*) ;
 scalar_t__ isspace (char) ;
 int memcpy (TYPE_4__*,char*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int printf (char*,int) ;
 int scan (TYPE_4__*,int ) ;
 int timelib_error_container_dtor (TYPE_3__*) ;
 int timelib_free (TYPE_4__*) ;
 void* timelib_malloc (int) ;
 void* timelib_time_ctor () ;
 int timelib_valid_date (void*,void*,void*) ;
 int timelib_valid_time (void*,void*,void*) ;

timelib_time* timelib_strtotime(char *s, size_t len, timelib_error_container **errors, const timelib_tzdb *tzdb, timelib_tz_get_wrapper tz_get_wrapper)
{
 Scanner in;
 int t;
 char *e = s + len - 1;

 memset(&in, 0, sizeof(in));
 in.errors = timelib_malloc(sizeof(timelib_error_container));
 in.errors->warning_count = 0;
 in.errors->warning_messages = ((void*)0);
 in.errors->error_count = 0;
 in.errors->error_messages = ((void*)0);

 if (len > 0) {
  while (isspace(*s) && s < e) {
   s++;
  }
  while (isspace(*e) && e > s) {
   e--;
  }
 }
 if (e - s < 0) {
  in.time = timelib_time_ctor();
  add_error(&in, TIMELIB_ERR_EMPTY_STRING, "Empty string");
  if (errors) {
   *errors = in.errors;
  } else {
   timelib_error_container_dtor(in.errors);
  }
  in.time->y = in.time->d = in.time->m = in.time->h = in.time->i = in.time->s = in.time->us = in.time->dst = in.time->z = TIMELIB_UNSET;
  in.time->is_localtime = in.time->zone_type = 0;
  return in.time;
 }
 e++;

 in.str = timelib_malloc((e - s) + YYMAXFILL);
 memset(in.str, 0, (e - s) + YYMAXFILL);
 memcpy(in.str, s, (e - s));
 in.lim = in.str + (e - s) + YYMAXFILL;
 in.cur = in.str;
 in.time = timelib_time_ctor();
 in.time->y = TIMELIB_UNSET;
 in.time->d = TIMELIB_UNSET;
 in.time->m = TIMELIB_UNSET;
 in.time->h = TIMELIB_UNSET;
 in.time->i = TIMELIB_UNSET;
 in.time->s = TIMELIB_UNSET;
 in.time->us = TIMELIB_UNSET;
 in.time->z = TIMELIB_UNSET;
 in.time->dst = TIMELIB_UNSET;
 in.tzdb = tzdb;
 in.time->is_localtime = 0;
 in.time->zone_type = 0;
 in.time->relative.days = TIMELIB_UNSET;

 do {
  t = scan(&in, tz_get_wrapper);



 } while(t != EOI);


 if (in.time->have_time && !timelib_valid_time( in.time->h, in.time->i, in.time->s)) {
  add_warning(&in, TIMELIB_WARN_INVALID_TIME, "The parsed time was invalid");
 }

 if (in.time->have_date && !timelib_valid_date( in.time->y, in.time->m, in.time->d)) {
  add_warning(&in, TIMELIB_WARN_INVALID_DATE, "The parsed date was invalid");
 }

 timelib_free(in.str);
 if (errors) {
  *errors = in.errors;
 } else {
  timelib_error_container_dtor(in.errors);
 }
 return in.time;
}
