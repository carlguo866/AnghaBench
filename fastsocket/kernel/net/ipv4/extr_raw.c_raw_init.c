
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct raw_sock {int filter; } ;
struct TYPE_2__ {scalar_t__ num; } ;


 scalar_t__ IPPROTO_ICMP ;
 TYPE_1__* inet_sk (struct sock*) ;
 int memset (int *,int ,int) ;
 struct raw_sock* raw_sk (struct sock*) ;

__attribute__((used)) static int raw_init(struct sock *sk)
{
 struct raw_sock *rp = raw_sk(sk);

 if (inet_sk(sk)->num == IPPROTO_ICMP)
  memset(&rp->filter, 0, sizeof(rp->filter));
 return 0;
}
