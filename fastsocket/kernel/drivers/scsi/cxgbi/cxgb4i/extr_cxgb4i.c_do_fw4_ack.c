
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int tid; int flags; int state; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_fw4_ack {int seq_vld; int snd_una; int credits; } ;


 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 unsigned int GET_TID (struct cpl_fw4_ack*) ;
 int __kfree_skb (struct sk_buff*) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_sock_rcv_wr_ack (struct cxgbi_sock*,int ,int ,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;
 struct cxgbi_sock* lookup_tid (struct tid_info*,unsigned int) ;
 int ntohl (int ) ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_fw4_ack(struct cxgbi_device *cdev, struct sk_buff *skb)
{
 struct cxgbi_sock *csk;
 struct cpl_fw4_ack *rpl = (struct cpl_fw4_ack *)skb->data;
 unsigned int tid = GET_TID(rpl);
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct tid_info *t = lldi->tids;

 csk = lookup_tid(t, tid);
 if (unlikely(!csk))
  pr_err("can't find connection for tid %u.\n", tid);
 else {
  log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
   "csk 0x%p,%u,0x%lx,%u.\n",
   csk, csk->state, csk->flags, csk->tid);
  cxgbi_sock_rcv_wr_ack(csk, rpl->credits, ntohl(rpl->snd_una),
     rpl->seq_vld);
 }
 __kfree_skb(skb);
}
