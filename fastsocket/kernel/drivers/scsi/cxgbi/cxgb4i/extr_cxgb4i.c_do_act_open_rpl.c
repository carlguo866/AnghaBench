
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_10__ {scalar_t__ function; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {int sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {int sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int lock; TYPE_5__ retry_timer; int port_id; int flags; int state; TYPE_4__ daddr; TYPE_2__ saddr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_act_open_rpl {int atid_status; } ;


 unsigned int CPL_ERR_ARP_MISS ;
 unsigned int CPL_ERR_CONN_EXIST ;
 unsigned int CPL_ERR_RTX_NEG_ADVICE ;
 unsigned int CPL_ERR_TCAM_FULL ;
 int GET_AOPEN_ATID (int ) ;
 unsigned int GET_AOPEN_STATUS (int ) ;
 unsigned int GET_TID (struct cpl_act_open_rpl*) ;
 unsigned int GET_TID_TID (int ) ;
 int HZ ;
 int __kfree_skb (struct sk_buff*) ;
 int act_open_rpl_status_to_errno (unsigned int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ csk_act_open_retry_timer ;
 int cxgb4_remove_tid (struct tid_info*,int ,unsigned int) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_sock_fail_act_open (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 scalar_t__ jiffies ;
 struct cxgbi_sock* lookup_atid (struct tid_info*,unsigned int) ;
 int mod_timer (TYPE_5__*,scalar_t__) ;
 int ntohs (int ) ;
 int pr_err (char*,unsigned int,unsigned int) ;
 int pr_info (char*,int *,int ,int *,int ,unsigned int,unsigned int,unsigned int,struct cxgbi_sock*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_act_open_rpl(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cxgbi_sock *csk;
 struct cpl_act_open_rpl *rpl = (struct cpl_act_open_rpl *)skb->data;
 unsigned int tid = GET_TID(rpl);
 unsigned int atid =
  GET_TID_TID(GET_AOPEN_ATID(be32_to_cpu(rpl->atid_status)));
 unsigned int status = GET_AOPEN_STATUS(be32_to_cpu(rpl->atid_status));
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;

 csk = lookup_atid(t, atid);
 if (unlikely(!csk)) {
  pr_err("NO matching conn. atid %u, tid %u.\n", atid, tid);
  goto rel_skb;
 }

 pr_info("%pI4:%u-%pI4:%u, atid %u,%u, status %u, csk 0x%p,%u,0x%lx.\n",
  &csk->saddr.sin_addr.s_addr, ntohs(csk->saddr.sin_port),
  &csk->daddr.sin_addr.s_addr, ntohs(csk->daddr.sin_port),
  atid, tid, status, csk, csk->state, csk->flags);

 if (status == CPL_ERR_RTX_NEG_ADVICE)
  goto rel_skb;

 if (status && status != CPL_ERR_TCAM_FULL &&
     status != CPL_ERR_CONN_EXIST &&
     status != CPL_ERR_ARP_MISS)
  cxgb4_remove_tid(lldi->tids, csk->port_id, GET_TID(rpl));

 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);

 if (status == CPL_ERR_CONN_EXIST &&
     csk->retry_timer.function != csk_act_open_retry_timer) {
  csk->retry_timer.function = csk_act_open_retry_timer;
  mod_timer(&csk->retry_timer, jiffies + HZ / 2);
 } else
  cxgbi_sock_fail_act_open(csk,
     act_open_rpl_status_to_errno(status));

 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
rel_skb:
 __kfree_skb(skb);
}
