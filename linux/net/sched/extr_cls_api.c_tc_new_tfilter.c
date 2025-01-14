
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; int tcm_handle; int tcm_block_index; int tcm_ifindex; int tcm_info; } ;
struct tcf_proto {TYPE_3__* ops; } ;
struct tcf_chain_info {int dummy; } ;
struct tcf_chain {int filter_chain_lock; TYPE_3__* tmplt_ops; scalar_t__ flushing; } ;
struct tcf_block {TYPE_3__* ops; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int user_ns; } ;
struct Qdisc {int flags; TYPE_2__* ops; } ;
struct TYPE_6__ {int (* change ) (struct net*,struct sk_buff*,struct tcf_proto*,unsigned long,int ,struct nlattr**,void**,int ,int,struct netlink_ext_ack*) ;void* (* get ) (struct tcf_proto*,int ) ;int kind; } ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int flags; } ;


 int CAP_NET_ADMIN ;
 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
 int IFNAMSIZ ;
 scalar_t__ IS_ERR (struct tcf_proto*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct tcf_proto*) ;
 int QDISC_CLASS_OPS_DOIT_UNLOCKED ;
 int RTM_NEWTFILTER ;
 int TCA_ACT_NOREPLACE ;
 int TCA_ACT_REPLACE ;
 size_t TCA_CHAIN ;
 size_t TCA_KIND ;
 int TCA_MAX ;
 int TCQ_F_CAN_BYPASS ;
 scalar_t__ TC_ACT_EXT_VAL_MASK ;
 scalar_t__ TC_H_MAJ (int ) ;
 scalar_t__ TC_H_MAKE (int,unsigned int) ;
 scalar_t__ TC_H_MIN (int ) ;
 struct tcf_proto* __tcf_block_find (struct net*,struct Qdisc*,unsigned long,int ,int ,struct netlink_ext_ack*) ;
 int __tcf_qdisc_cl_find (struct Qdisc*,scalar_t__,unsigned long*,int ,struct netlink_ext_ack*) ;
 int __tcf_qdisc_find (struct net*,struct Qdisc**,scalar_t__*,int ,int,struct netlink_ext_ack*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_ns_capable (struct sk_buff*,int ,int ) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int rtm_tca_policy ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;
 void* stub1 (struct tcf_proto*,int ) ;
 int stub2 (struct net*,struct sk_buff*,struct tcf_proto*,unsigned long,int ,struct nlattr**,void**,int ,int,struct netlink_ext_ack*) ;
 scalar_t__ tcf_auto_prio (int ) ;
 int tcf_block_release (struct Qdisc*,struct tcf_proto*,int) ;
 struct tcf_chain* tcf_chain_get (struct tcf_proto*,scalar_t__,int) ;
 int tcf_chain_put (struct tcf_chain*) ;
 int tcf_chain_tp_delete_empty (struct tcf_chain*,struct tcf_proto*,int,int *) ;
 struct tcf_proto* tcf_chain_tp_find (struct tcf_chain*,struct tcf_chain_info*,scalar_t__,scalar_t__,int) ;
 struct tcf_proto* tcf_chain_tp_insert_unique (struct tcf_chain*,struct tcf_proto*,scalar_t__,scalar_t__,int) ;
 int tcf_chain_tp_prev (struct tcf_chain*,struct tcf_chain_info*) ;
 scalar_t__ tcf_proto_check_kind (struct nlattr*,char*) ;
 struct tcf_proto* tcf_proto_create (int ,scalar_t__,scalar_t__,struct tcf_chain*,int,struct netlink_ext_ack*) ;
 int tcf_proto_is_unlocked (char*) ;
 int tcf_proto_put (struct tcf_proto*,int,int *) ;
 int tfilter_notify (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_proto*,struct Qdisc*,scalar_t__,void*,int ,int,int) ;
 int tfilter_put (struct tcf_proto*,void*) ;

__attribute__((used)) static int tc_new_tfilter(struct sk_buff *skb, struct nlmsghdr *n,
     struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_MAX + 1];
 char name[IFNAMSIZ];
 struct tcmsg *t;
 u32 protocol;
 u32 prio;
 bool prio_allocate;
 u32 parent;
 u32 chain_index;
 struct Qdisc *q = ((void*)0);
 struct tcf_chain_info chain_info;
 struct tcf_chain *chain = ((void*)0);
 struct tcf_block *block;
 struct tcf_proto *tp;
 unsigned long cl;
 void *fh;
 int err;
 int tp_created;
 bool rtnl_held = 0;

 if (!netlink_ns_capable(skb, net->user_ns, CAP_NET_ADMIN))
  return -EPERM;

replay:
 tp_created = 0;

 err = nlmsg_parse_deprecated(n, sizeof(*t), tca, TCA_MAX,
         rtm_tca_policy, extack);
 if (err < 0)
  return err;

 t = nlmsg_data(n);
 protocol = TC_H_MIN(t->tcm_info);
 prio = TC_H_MAJ(t->tcm_info);
 prio_allocate = 0;
 parent = t->tcm_parent;
 tp = ((void*)0);
 cl = 0;
 block = ((void*)0);

 if (prio == 0) {



  if (n->nlmsg_flags & NLM_F_CREATE) {
   prio = TC_H_MAKE(0x80000000U, 0U);
   prio_allocate = 1;
  } else {
   NL_SET_ERR_MSG(extack, "Invalid filter command with priority of zero");
   return -ENOENT;
  }
 }



 err = __tcf_qdisc_find(net, &q, &parent, t->tcm_ifindex, 0, extack);
 if (err)
  return err;

 if (tcf_proto_check_kind(tca[TCA_KIND], name)) {
  NL_SET_ERR_MSG(extack, "Specified TC filter name too long");
  err = -EINVAL;
  goto errout;
 }





 if (rtnl_held ||
     (q && !(q->ops->cl_ops->flags & QDISC_CLASS_OPS_DOIT_UNLOCKED)) ||
     !tcf_proto_is_unlocked(name)) {
  rtnl_held = 1;
  rtnl_lock();
 }

 err = __tcf_qdisc_cl_find(q, parent, &cl, t->tcm_ifindex, extack);
 if (err)
  goto errout;

 block = __tcf_block_find(net, q, cl, t->tcm_ifindex, t->tcm_block_index,
     extack);
 if (IS_ERR(block)) {
  err = PTR_ERR(block);
  goto errout;
 }

 chain_index = tca[TCA_CHAIN] ? nla_get_u32(tca[TCA_CHAIN]) : 0;
 if (chain_index > TC_ACT_EXT_VAL_MASK) {
  NL_SET_ERR_MSG(extack, "Specified chain index exceeds upper limit");
  err = -EINVAL;
  goto errout;
 }
 chain = tcf_chain_get(block, chain_index, 1);
 if (!chain) {
  NL_SET_ERR_MSG(extack, "Cannot create specified filter chain");
  err = -ENOMEM;
  goto errout;
 }

 mutex_lock(&chain->filter_chain_lock);
 tp = tcf_chain_tp_find(chain, &chain_info, protocol,
          prio, prio_allocate);
 if (IS_ERR(tp)) {
  NL_SET_ERR_MSG(extack, "Filter with specified priority/protocol not found");
  err = PTR_ERR(tp);
  goto errout_locked;
 }

 if (tp == ((void*)0)) {
  struct tcf_proto *tp_new = ((void*)0);

  if (chain->flushing) {
   err = -EAGAIN;
   goto errout_locked;
  }



  if (tca[TCA_KIND] == ((void*)0) || !protocol) {
   NL_SET_ERR_MSG(extack, "Filter kind and protocol must be specified");
   err = -EINVAL;
   goto errout_locked;
  }

  if (!(n->nlmsg_flags & NLM_F_CREATE)) {
   NL_SET_ERR_MSG(extack, "Need both RTM_NEWTFILTER and NLM_F_CREATE to create a new filter");
   err = -ENOENT;
   goto errout_locked;
  }

  if (prio_allocate)
   prio = tcf_auto_prio(tcf_chain_tp_prev(chain,
              &chain_info));

  mutex_unlock(&chain->filter_chain_lock);
  tp_new = tcf_proto_create(nla_data(tca[TCA_KIND]),
       protocol, prio, chain, rtnl_held,
       extack);
  if (IS_ERR(tp_new)) {
   err = PTR_ERR(tp_new);
   goto errout_tp;
  }

  tp_created = 1;
  tp = tcf_chain_tp_insert_unique(chain, tp_new, protocol, prio,
      rtnl_held);
  if (IS_ERR(tp)) {
   err = PTR_ERR(tp);
   goto errout_tp;
  }
 } else {
  mutex_unlock(&chain->filter_chain_lock);
 }

 if (tca[TCA_KIND] && nla_strcmp(tca[TCA_KIND], tp->ops->kind)) {
  NL_SET_ERR_MSG(extack, "Specified filter kind does not match existing one");
  err = -EINVAL;
  goto errout;
 }

 fh = tp->ops->get(tp, t->tcm_handle);

 if (!fh) {
  if (!(n->nlmsg_flags & NLM_F_CREATE)) {
   NL_SET_ERR_MSG(extack, "Need both RTM_NEWTFILTER and NLM_F_CREATE to create a new filter");
   err = -ENOENT;
   goto errout;
  }
 } else if (n->nlmsg_flags & NLM_F_EXCL) {
  tfilter_put(tp, fh);
  NL_SET_ERR_MSG(extack, "Filter already exists");
  err = -EEXIST;
  goto errout;
 }

 if (chain->tmplt_ops && chain->tmplt_ops != tp->ops) {
  NL_SET_ERR_MSG(extack, "Chain template is set to a different filter kind");
  err = -EINVAL;
  goto errout;
 }

 err = tp->ops->change(net, skb, tp, cl, t->tcm_handle, tca, &fh,
         n->nlmsg_flags & NLM_F_CREATE ? TCA_ACT_NOREPLACE : TCA_ACT_REPLACE,
         rtnl_held, extack);
 if (err == 0) {
  tfilter_notify(net, skb, n, tp, block, q, parent, fh,
          RTM_NEWTFILTER, 0, rtnl_held);
  tfilter_put(tp, fh);

  if (q)
   q->flags &= ~TCQ_F_CAN_BYPASS;
 }

errout:
 if (err && tp_created)
  tcf_chain_tp_delete_empty(chain, tp, rtnl_held, ((void*)0));
errout_tp:
 if (chain) {
  if (tp && !IS_ERR(tp))
   tcf_proto_put(tp, rtnl_held, ((void*)0));
  if (!tp_created)
   tcf_chain_put(chain);
 }
 tcf_block_release(q, block, rtnl_held);

 if (rtnl_held)
  rtnl_unlock();

 if (err == -EAGAIN) {



  rtnl_held = 1;

  goto replay;
 }
 return err;

errout_locked:
 mutex_unlock(&chain->filter_chain_lock);
 goto errout;
}
