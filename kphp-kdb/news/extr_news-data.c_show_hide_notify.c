
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pnext; } ;
typedef TYPE_1__ userplace_t ;
struct TYPE_6__ {TYPE_1__* first; } ;
typedef TYPE_2__ notify_place_t ;


 int NOTIFY_MODE ;
 int check_obj (int,int,int) ;
 scalar_t__ get_place_f (int,int,int,int ) ;
 scalar_t__ min_logevent_time ;
 scalar_t__ now ;
 scalar_t__ show_hide_notify_userplace (TYPE_1__*,int ,TYPE_2__*,int,int) ;
 scalar_t__ time (int ) ;
 int valid_type (int) ;
 int vkprintf (int,char*,...) ;

__attribute__((used)) static int show_hide_notify (int type, int owner, int place, int item, int shown) {
  vkprintf (4, "show_hide_notify: type = %d, owner = %d, place = %d, item = %d, shown = %d, time = %lf\n", type, owner, place, item, shown, (double)time (0));
  if (now < min_logevent_time) {
    return 0;
  }
  if (!check_obj (type, owner, place) || !NOTIFY_MODE || !valid_type (type)) {
    return -1;
  }

  notify_place_t *V = (notify_place_t *)get_place_f (type, owner, place, 0);
  vkprintf (4, "V = %p, time = %lf\n", V, (double)time (0));
  if (!V) {
    return 0;
  }

  userplace_t *up = V->first;
  int res = 0;
  while (up != (userplace_t *)V) {
    res += show_hide_notify_userplace (up, 0, V, item, shown);
    up = up->pnext;
  }


  return res;
}
