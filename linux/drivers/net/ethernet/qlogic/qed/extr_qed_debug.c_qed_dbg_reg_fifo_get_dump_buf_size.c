
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_OK ;
 int qed_dbg_dev_init (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_reg_fifo_dump (struct qed_hwfn*,struct qed_ptt*,int *,int,scalar_t__*) ;

enum dbg_status qed_dbg_reg_fifo_get_dump_buf_size(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u32 *buf_size)
{
 enum dbg_status status = qed_dbg_dev_init(p_hwfn, p_ptt);

 *buf_size = 0;

 if (status != DBG_STATUS_OK)
  return status;

 return qed_reg_fifo_dump(p_hwfn, p_ptt, ((void*)0), 0, buf_size);
}
