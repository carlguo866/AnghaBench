
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi_wlan_enable_cfg {int dummy; } ;
struct ath10k {int dummy; } ;
typedef enum wlfw_driver_mode_enum_v01 { ____Placeholder_wlfw_driver_mode_enum_v01 } wlfw_driver_mode_enum_v01 ;


 int ATH10K_DBG_QMI ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,struct ath10k_qmi_wlan_enable_cfg*) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_qmi_cfg_send_sync_msg (struct ath10k*,struct ath10k_qmi_wlan_enable_cfg*,char const*) ;
 int ath10k_qmi_mode_send_sync_msg (struct ath10k*,int) ;

int ath10k_qmi_wlan_enable(struct ath10k *ar,
      struct ath10k_qmi_wlan_enable_cfg *config,
      enum wlfw_driver_mode_enum_v01 mode,
      const char *version)
{
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_QMI, "qmi mode %d config %p\n",
     mode, config);

 ret = ath10k_qmi_cfg_send_sync_msg(ar, config, version);
 if (ret) {
  ath10k_err(ar, "failed to send qmi config: %d\n", ret);
  return ret;
 }

 ret = ath10k_qmi_mode_send_sync_msg(ar, mode);
 if (ret) {
  ath10k_err(ar, "failed to send qmi mode: %d\n", ret);
  return ret;
 }

 return 0;
}
