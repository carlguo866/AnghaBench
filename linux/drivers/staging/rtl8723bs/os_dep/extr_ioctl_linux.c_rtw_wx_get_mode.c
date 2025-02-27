
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int IW_MODE_ADHOC ;
 int IW_MODE_AUTO ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, (" rtw_wx_get_mode\n"));

 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == 1) {
  wrqu->mode = IW_MODE_INFRA;
 } else if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == 1) ||
         (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1)) {
  wrqu->mode = IW_MODE_ADHOC;
 } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1) {
  wrqu->mode = IW_MODE_MASTER;
 } else {
  wrqu->mode = IW_MODE_AUTO;
 }
 return 0;
}
