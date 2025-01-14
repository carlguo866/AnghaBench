
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int flags; struct Qdisc* qdisc; struct netdev_queue rx_queue; } ;
struct Qdisc_class_ops {int (* graft ) (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**) ;unsigned long (* get ) (struct Qdisc*,int ) ;int (* put ) (struct Qdisc*,unsigned long) ;} ;
struct Qdisc {int flags; TYPE_1__* ops; int refcnt; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; int (* attach ) (struct Qdisc*) ;} ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int IFF_UP ;
 int TCQ_F_INGRESS ;
 int atomic_inc (int *) ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 struct Qdisc* dev_graft_qdisc (struct netdev_queue*,struct Qdisc*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 struct Qdisc noop_qdisc ;
 int notify_and_destroy (struct sk_buff*,struct nlmsghdr*,int ,struct Qdisc*,struct Qdisc*) ;
 int qdisc_destroy (struct Qdisc*) ;
 int stub1 (struct Qdisc*) ;
 unsigned long stub2 (struct Qdisc*,int ) ;
 int stub3 (struct Qdisc*,unsigned long,struct Qdisc*,struct Qdisc**) ;
 int stub4 (struct Qdisc*,unsigned long) ;

__attribute__((used)) static int qdisc_graft(struct net_device *dev, struct Qdisc *parent,
         struct sk_buff *skb, struct nlmsghdr *n, u32 classid,
         struct Qdisc *new, struct Qdisc *old)
{
 struct Qdisc *q = old;
 int err = 0;

 if (parent == ((void*)0)) {
  unsigned int i, num_q, ingress;

  ingress = 0;
  num_q = dev->num_tx_queues;
  if ((q && q->flags & TCQ_F_INGRESS) ||
      (new && new->flags & TCQ_F_INGRESS)) {
   num_q = 1;
   ingress = 1;
  }

  if (dev->flags & IFF_UP)
   dev_deactivate(dev);

  if (new && new->ops->attach) {
   new->ops->attach(new);
   num_q = 0;
  }

  for (i = 0; i < num_q; i++) {
   struct netdev_queue *dev_queue = &dev->rx_queue;

   if (!ingress)
    dev_queue = netdev_get_tx_queue(dev, i);

   old = dev_graft_qdisc(dev_queue, new);
   if (new && i > 0)
    atomic_inc(&new->refcnt);

   if (!ingress)
    qdisc_destroy(old);
  }

  if (!ingress) {
   notify_and_destroy(skb, n, classid, dev->qdisc, new);
   if (new && !new->ops->attach)
    atomic_inc(&new->refcnt);
   dev->qdisc = new ? : &noop_qdisc;
  } else {
   notify_and_destroy(skb, n, classid, old, new);
  }

  if (dev->flags & IFF_UP)
   dev_activate(dev);
 } else {
  const struct Qdisc_class_ops *cops = parent->ops->cl_ops;

  err = -EOPNOTSUPP;
  if (cops && cops->graft) {
   unsigned long cl = cops->get(parent, classid);
   if (cl) {
    err = cops->graft(parent, cl, new, &old);
    cops->put(parent, cl);
   } else
    err = -ENOENT;
  }
  if (!err)
   notify_and_destroy(skb, n, classid, old, new);
 }
 return err;
}
