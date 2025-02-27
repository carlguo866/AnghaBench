
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int EAGAIN ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_start_recovery_process (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_recovery_process(struct qed_dev *cdev)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *p_ptt;
 int rc = 0;

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return -EAGAIN;

 rc = qed_start_recovery_process(p_hwfn, p_ptt);

 qed_ptt_release(p_hwfn, p_ptt);

 return rc;
}
