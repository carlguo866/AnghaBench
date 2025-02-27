
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wol_mac ;
typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int mac_upper; int mac_lower; int data_src_size; struct qed_mcp_mb_params* p_data_src; int cmd; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
struct mcp_mac {int mac_upper; int mac_lower; int data_src_size; struct mcp_mac* p_data_src; int cmd; } ;
typedef int mb_params ;
struct TYPE_2__ {scalar_t__ wol_config; int* wol_mac; } ;


 int DP_VERBOSE (struct qed_hwfn*,int,char*,int*,int,int) ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int NETIF_MSG_IFDOWN ;
 int QED_MSG_SP ;
 scalar_t__ QED_OV_WOL_ENABLED ;
 int memset (struct qed_mcp_mb_params*,int ,int) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ;

int qed_mcp_unload_done(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_mcp_mb_params mb_params;
 struct mcp_mac wol_mac;

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_UNLOAD_DONE;


 if (p_hwfn->cdev->wol_config == QED_OV_WOL_ENABLED) {
  u8 *p_mac = p_hwfn->cdev->wol_mac;

  memset(&wol_mac, 0, sizeof(wol_mac));
  wol_mac.mac_upper = p_mac[0] << 8 | p_mac[1];
  wol_mac.mac_lower = p_mac[2] << 24 | p_mac[3] << 16 |
        p_mac[4] << 8 | p_mac[5];

  DP_VERBOSE(p_hwfn,
      (QED_MSG_SP | NETIF_MSG_IFDOWN),
      "Setting WoL MAC: %pM --> [%08x,%08x]\n",
      p_mac, wol_mac.mac_upper, wol_mac.mac_lower);

  mb_params.p_data_src = &wol_mac;
  mb_params.data_src_size = sizeof(wol_mac);
 }

 return qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
}
