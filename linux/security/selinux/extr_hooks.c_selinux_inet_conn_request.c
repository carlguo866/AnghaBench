
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
typedef int u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {int dummy; } ;
struct request_sock {void* peer_secid; void* secid; TYPE_1__* rsk_ops; } ;
struct TYPE_2__ {int family; } ;


 int selinux_conn_sid (int ,void*,void**) ;
 int selinux_netlbl_inet_conn_request (struct request_sock*,int ) ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,int ,void**) ;

__attribute__((used)) static int selinux_inet_conn_request(struct sock *sk, struct sk_buff *skb,
         struct request_sock *req)
{
 struct sk_security_struct *sksec = sk->sk_security;
 int err;
 u16 family = req->rsk_ops->family;
 u32 connsid;
 u32 peersid;

 err = selinux_skb_peerlbl_sid(skb, family, &peersid);
 if (err)
  return err;
 err = selinux_conn_sid(sksec->sid, peersid, &connsid);
 if (err)
  return err;
 req->secid = connsid;
 req->peer_secid = peersid;

 return selinux_netlbl_inet_conn_request(req, family);
}
