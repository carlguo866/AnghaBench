
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int device; } ;
struct rvt_qp {int s_flags; size_t s_lsn; int s_lock; TYPE_1__ ibqp; } ;
struct TYPE_4__ {int (* schedule_send ) (struct rvt_qp*) ;} ;
struct rvt_dev_info {TYPE_2__ driver_f; } ;


 size_t IB_AETH_CREDIT_INVAL ;
 size_t IB_AETH_CREDIT_MASK ;
 size_t IB_AETH_CREDIT_SHIFT ;
 size_t IB_MSN_MASK ;
 int RVT_S_UNLIMITED_CREDIT ;
 int RVT_S_WAIT_SSN_CREDIT ;
 size_t* credit_table ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ rvt_cmp_msn (size_t,size_t) ;
 int stub1 (struct rvt_qp*) ;
 int stub2 (struct rvt_qp*) ;

void rvt_get_credit(struct rvt_qp *qp, u32 aeth)
{
 struct rvt_dev_info *rdi = ib_to_rvt(qp->ibqp.device);
 u32 credit = (aeth >> IB_AETH_CREDIT_SHIFT) & IB_AETH_CREDIT_MASK;

 lockdep_assert_held(&qp->s_lock);





 if (credit == IB_AETH_CREDIT_INVAL) {
  if (!(qp->s_flags & RVT_S_UNLIMITED_CREDIT)) {
   qp->s_flags |= RVT_S_UNLIMITED_CREDIT;
   if (qp->s_flags & RVT_S_WAIT_SSN_CREDIT) {
    qp->s_flags &= ~RVT_S_WAIT_SSN_CREDIT;
    rdi->driver_f.schedule_send(qp);
   }
  }
 } else if (!(qp->s_flags & RVT_S_UNLIMITED_CREDIT)) {

  credit = (aeth + credit_table[credit]) & IB_MSN_MASK;
  if (rvt_cmp_msn(credit, qp->s_lsn) > 0) {
   qp->s_lsn = credit;
   if (qp->s_flags & RVT_S_WAIT_SSN_CREDIT) {
    qp->s_flags &= ~RVT_S_WAIT_SSN_CREDIT;
    rdi->driver_f.schedule_send(qp);
   }
  }
 }
}
