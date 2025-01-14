
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct alg_sock {struct crypto_skcipher* private; struct sock* parent; } ;


 int af_alg_sendmsg (struct socket*,struct msghdr*,size_t,unsigned int) ;
 struct alg_sock* alg_sk (struct sock*) ;
 unsigned int crypto_skcipher_ivsize (struct crypto_skcipher*) ;

__attribute__((used)) static int skcipher_sendmsg(struct socket *sock, struct msghdr *msg,
       size_t size)
{
 struct sock *sk = sock->sk;
 struct alg_sock *ask = alg_sk(sk);
 struct sock *psk = ask->parent;
 struct alg_sock *pask = alg_sk(psk);
 struct crypto_skcipher *tfm = pask->private;
 unsigned ivsize = crypto_skcipher_ivsize(tfm);

 return af_alg_sendmsg(sock, msg, size, ivsize);
}
