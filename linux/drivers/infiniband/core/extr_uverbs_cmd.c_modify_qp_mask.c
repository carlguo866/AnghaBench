
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;




 int IB_QP_MAX_DEST_RD_ATOMIC ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_MIN_RNR_TIMER ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;

__attribute__((used)) static int modify_qp_mask(enum ib_qp_type qp_type, int mask)
{
 switch (qp_type) {
 case 129:
  return mask & ~(IB_QP_MAX_DEST_RD_ATOMIC | IB_QP_MIN_RNR_TIMER);
 case 128:
  return mask & ~(IB_QP_MAX_QP_RD_ATOMIC | IB_QP_RETRY_CNT |
    IB_QP_RNR_RETRY);
 default:
  return mask;
 }
}
