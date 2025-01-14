
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_supp_rates; int capability; int aid; } ;
struct TYPE_4__ {TYPE_1__ add_sta; } ;
struct prism2_hostapd_param {TYPE_2__ u; int sta_addr; int cmd; } ;
struct hostapd_sta_add_params {size_t supp_rates_len; int* supp_rates; int capability; int aid; int addr; } ;
struct hostap_driver_data {int dummy; } ;
typedef int param ;


 int ETH_ALEN ;
 int PRISM2_HOSTAPD_ADD_STA ;
 int WLAN_RATE_11M ;
 int WLAN_RATE_1M ;
 int WLAN_RATE_2M ;
 int WLAN_RATE_5M5 ;
 int hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct prism2_hostapd_param*,int ,int) ;

__attribute__((used)) static int hostap_sta_add(void *priv, struct hostapd_sta_add_params *params)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param param;
 int tx_supp_rates = 0;
 size_t i;






 for (i = 0; i < params->supp_rates_len; i++) {
  if ((params->supp_rates[i] & 0x7f) == 2)
   tx_supp_rates |= BIT(0);
  if ((params->supp_rates[i] & 0x7f) == 4)
   tx_supp_rates |= BIT(1);
  if ((params->supp_rates[i] & 0x7f) == 11)
   tx_supp_rates |= BIT(2);
  if ((params->supp_rates[i] & 0x7f) == 22)
   tx_supp_rates |= BIT(3);
 }

 memset(&param, 0, sizeof(param));
 param.cmd = PRISM2_HOSTAPD_ADD_STA;
 memcpy(param.sta_addr, params->addr, ETH_ALEN);
 param.u.add_sta.aid = params->aid;
 param.u.add_sta.capability = params->capability;
 param.u.add_sta.tx_supp_rates = tx_supp_rates;
 return hostapd_ioctl(drv, &param, sizeof(param));
}
