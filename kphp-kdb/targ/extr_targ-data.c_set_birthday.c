
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bday_year; int bday_month; int bday_day; int uid; } ;
typedef TYPE_1__ user_t ;
struct lev_birthday {int year; int month; int day; int user_id; } ;


 TYPE_1__* get_user (int ) ;
 int q_bday ;
 int q_bmonth ;
 int q_byear ;
 int user_change_field (int ,int ,int,int) ;

__attribute__((used)) static void set_birthday (struct lev_birthday *E) {
  user_t *U = get_user (E->user_id);
  if (!U) {
    return;
  }
  if (!E->year || (E->year >= 1900 && E->year <= 2017)) {
    user_change_field (U->uid, q_byear, U->bday_year, E->year);
    U->bday_year = E->year;
  }
  if (E->month >= 0 && E->month <= 12) {
    user_change_field (U->uid, q_bmonth, U->bday_month, E->month);
    U->bday_month = E->month;
  }
  if (E->day >= 0 && E->day <= 31) {
    user_change_field (U->uid, q_bday, U->bday_day, E->day);
    U->bday_day = E->day;
  }
}
