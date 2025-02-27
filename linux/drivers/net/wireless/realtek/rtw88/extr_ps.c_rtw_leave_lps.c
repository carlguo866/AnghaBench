
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_vif {int in_lps; } ;
struct rtw_lps_conf {struct rtw_vif* rtwvif; int mode; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; } ;


 int RTW_MODE_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int rtw_leave_lps_core (struct rtw_dev*) ;

void rtw_leave_lps(struct rtw_dev *rtwdev, struct rtw_vif *rtwvif)
{
 struct rtw_lps_conf *conf = &rtwdev->lps_conf;

 if (WARN_ON(!rtwvif))
  return;

 if (!rtwvif->in_lps)
  return;

 conf->mode = RTW_MODE_ACTIVE;
 conf->rtwvif = rtwvif;
 rtwvif->in_lps = 0;

 rtw_leave_lps_core(rtwdev);
}
