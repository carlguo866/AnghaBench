
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
typedef enum qed_resc_lock { ____Placeholder_qed_resc_lock } qed_resc_lock ;


 int MFW_PORT (struct qed_hwfn*) ;
 int QED_RESC_LOCK_PTP_PORT0 ;
 int QED_RESC_LOCK_PTP_PORT1 ;
 int QED_RESC_LOCK_PTP_PORT2 ;
 int QED_RESC_LOCK_PTP_PORT3 ;
 int QED_RESC_LOCK_RESC_INVALID ;

__attribute__((used)) static enum qed_resc_lock qed_ptcdev_to_resc(struct qed_hwfn *p_hwfn)
{
 switch (MFW_PORT(p_hwfn)) {
 case 0:
  return QED_RESC_LOCK_PTP_PORT0;
 case 1:
  return QED_RESC_LOCK_PTP_PORT1;
 case 2:
  return QED_RESC_LOCK_PTP_PORT2;
 case 3:
  return QED_RESC_LOCK_PTP_PORT3;
 default:
  return QED_RESC_LOCK_RESC_INVALID;
 }
}
