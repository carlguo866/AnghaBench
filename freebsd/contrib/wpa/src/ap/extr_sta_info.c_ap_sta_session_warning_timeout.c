
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ap_handle_session_warning_timer ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,struct sta_info*) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,struct sta_info*) ;

void ap_sta_session_warning_timeout(struct hostapd_data *hapd,
        struct sta_info *sta, int warning_time)
{
 eloop_cancel_timeout(ap_handle_session_warning_timer, hapd, sta);
 eloop_register_timeout(warning_time, 0, ap_handle_session_warning_timer,
          hapd, sta);
}
