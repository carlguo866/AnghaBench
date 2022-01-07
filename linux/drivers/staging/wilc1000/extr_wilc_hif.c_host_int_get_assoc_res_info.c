
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_ASSOC_RES_INFO ;
 int WID_STR ;
 int WILC_GET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

__attribute__((used)) static void host_int_get_assoc_res_info(struct wilc_vif *vif,
     u8 *assoc_resp_info,
     u32 max_assoc_resp_info_len,
     u32 *rcvd_assoc_resp_info_len)
{
 int result;
 struct wid wid;

 wid.id = WID_ASSOC_RES_INFO;
 wid.type = WID_STR;
 wid.val = assoc_resp_info;
 wid.size = max_assoc_resp_info_len;

 result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 if (result) {
  *rcvd_assoc_resp_info_len = 0;
  netdev_err(vif->ndev, "Failed to send association response\n");
  return;
 }

 *rcvd_assoc_resp_info_len = wid.size;
}
