
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int skcipher_check_key (struct socket*) ;
 int skcipher_sendmsg (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int skcipher_sendmsg_nokey(struct socket *sock, struct msghdr *msg,
      size_t size)
{
 int err;

 err = skcipher_check_key(sock);
 if (err)
  return err;

 return skcipher_sendmsg(sock, msg, size);
}
