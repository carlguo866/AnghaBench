
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct TYPE_3__ {scalar_t__ type; struct net_device const* dev; } ;
struct packet_sock {int running; int bind_lock; TYPE_1__ prot_hook; int ifindex; scalar_t__ num; } ;
typedef struct net_device {int flags; int ifindex; } const net_device ;
typedef scalar_t__ __be16 ;


 int ENETDOWN ;
 int IFF_UP ;
 int SOCK_DEAD ;
 int __sock_put (struct sock*) ;
 int dev_add_pack (TYPE_1__*) ;
 int dev_remove_pack (TYPE_1__*) ;
 int lock_sock (struct sock*) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int packet_do_bind(struct sock *sk, struct net_device *dev, __be16 proto)
{
 struct packet_sock *po = pkt_sk(sk);
 const struct net_device *dev_curr;
 __be16 proto_curr;
 bool need_rehook;

 lock_sock(sk);
 spin_lock(&po->bind_lock);

 proto_curr = po->prot_hook.type;
 dev_curr = po->prot_hook.dev;

 need_rehook = proto_curr != proto || dev_curr != dev;

 if (need_rehook) {
  if (po->running) {
   __sock_put(sk);
   po->running = 0;
   po->num = 0;
   spin_unlock(&po->bind_lock);
   dev_remove_pack(&po->prot_hook);
   spin_lock(&po->bind_lock);
  }

  po->num = proto;
  po->prot_hook.type = proto;
  po->prot_hook.dev = dev;

  po->ifindex = dev ? dev->ifindex : 0;
 }

 if (proto == 0 || !need_rehook)
  goto out_unlock;

 if (!dev || (dev->flags & IFF_UP)) {
  dev_add_pack(&po->prot_hook);
  sock_hold(sk);
  po->running = 1;
 } else {
  sk->sk_err = ENETDOWN;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_error_report(sk);
 }

out_unlock:
 spin_unlock(&po->bind_lock);
 release_sock(sk);
 return 0;
}
