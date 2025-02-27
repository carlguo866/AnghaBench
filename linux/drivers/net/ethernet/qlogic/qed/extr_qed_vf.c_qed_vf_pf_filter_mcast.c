
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_sp_vport_update_params {int update_approx_mcast_flg; int* bins; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_mcast {scalar_t__ opcode; int num_mc_addrs; int * mac; } ;
typedef int sp_params ;


 scalar_t__ QED_FILTER_ADD ;
 int memset (struct qed_sp_vport_update_params*,int ,int) ;
 int qed_mcast_bin_from_mac (int ) ;
 int qed_vf_pf_vport_update (struct qed_hwfn*,struct qed_sp_vport_update_params*) ;

void qed_vf_pf_filter_mcast(struct qed_hwfn *p_hwfn,
       struct qed_filter_mcast *p_filter_cmd)
{
 struct qed_sp_vport_update_params sp_params;
 int i;

 memset(&sp_params, 0, sizeof(sp_params));
 sp_params.update_approx_mcast_flg = 1;

 if (p_filter_cmd->opcode == QED_FILTER_ADD) {
  for (i = 0; i < p_filter_cmd->num_mc_addrs; i++) {
   u32 bit;

   bit = qed_mcast_bin_from_mac(p_filter_cmd->mac[i]);
   sp_params.bins[bit / 32] |= 1 << (bit % 32);
  }
 }

 qed_vf_pf_vport_update(p_hwfn, &sp_params);
}
