
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * bins; } ;
struct TYPE_4__ {int update_approx_mcast_flg; } ;
struct vport_update_ramrod_data {TYPE_1__ approx_mcast; TYPE_2__ common; } ;
struct qed_sp_vport_update_params {int * bins; int update_approx_mcast_flg; } ;
struct qed_hwfn {int dummy; } ;


 int ETH_MULTICAST_MAC_BINS_IN_REGS ;
 int cpu_to_le32 (int ) ;
 int memset (int **,int ,int) ;

__attribute__((used)) static void
qed_sp_update_mcast_bin(struct qed_hwfn *p_hwfn,
   struct vport_update_ramrod_data *p_ramrod,
   struct qed_sp_vport_update_params *p_params)
{
 int i;

 memset(&p_ramrod->approx_mcast.bins, 0,
        sizeof(p_ramrod->approx_mcast.bins));

 if (!p_params->update_approx_mcast_flg)
  return;

 p_ramrod->common.update_approx_mcast_flg = 1;
 for (i = 0; i < ETH_MULTICAST_MAC_BINS_IN_REGS; i++) {
  u32 *p_bins = p_params->bins;

  p_ramrod->approx_mcast.bins[i] = cpu_to_le32(p_bins[i]);
 }
}
