
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hisi_qm {scalar_t__ ctrl_qp_num; } ;


 int EINVAL ;
 int qm_set_sqc_cqc_vft (struct hisi_qm*,scalar_t__,scalar_t__,scalar_t__) ;

int hisi_qm_set_vft(struct hisi_qm *qm, u32 fun_num, u32 base,
      u32 number)
{
 u32 max_q_num = qm->ctrl_qp_num;

 if (base >= max_q_num || number > max_q_num ||
     (base + number) > max_q_num)
  return -EINVAL;

 return qm_set_sqc_cqc_vft(qm, fun_num, base, number);
}
