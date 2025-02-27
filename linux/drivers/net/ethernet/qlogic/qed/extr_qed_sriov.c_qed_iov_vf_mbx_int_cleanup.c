
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_vf_info {int num_sbs; int opaque_fid; int * igu_sbs; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct pfvf_def_resp_tlv {int dummy; } ;


 int CHANNEL_TLV_INT_CLEANUP ;
 int PFVF_STATUS_SUCCESS ;
 int qed_int_igu_init_pure_rt_single (struct qed_hwfn*,struct qed_ptt*,int ,int ,int) ;
 int qed_iov_prepare_resp (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int ,int,int ) ;

__attribute__((used)) static void qed_iov_vf_mbx_int_cleanup(struct qed_hwfn *p_hwfn,
           struct qed_ptt *p_ptt,
           struct qed_vf_info *vf)
{
 int i;


 for (i = 0; i < vf->num_sbs; i++)
  qed_int_igu_init_pure_rt_single(p_hwfn, p_ptt,
      vf->igu_sbs[i],
      vf->opaque_fid, 0);

 qed_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_INT_CLEANUP,
        sizeof(struct pfvf_def_resp_tlv),
        PFVF_STATUS_SUCCESS);
}
