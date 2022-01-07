
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct sctp_af {int sockaddr_len; } ;


 int EINVAL ;
 int SCTP_DEBUG_PRINTK (char*,struct sock*,struct sockaddr*,int) ;
 int sctp_bindx_rem (struct sock*,struct sockaddr*,int) ;
 int sctp_do_bind (struct sock*,union sctp_addr*,int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;

__attribute__((used)) static int sctp_bindx_add(struct sock *sk, struct sockaddr *addrs, int addrcnt)
{
 int cnt;
 int retval = 0;
 void *addr_buf;
 struct sockaddr *sa_addr;
 struct sctp_af *af;

 SCTP_DEBUG_PRINTK("sctp_bindx_add (sk: %p, addrs: %p, addrcnt: %d)\n",
     sk, addrs, addrcnt);

 addr_buf = addrs;
 for (cnt = 0; cnt < addrcnt; cnt++) {



  sa_addr = (struct sockaddr *)addr_buf;
  af = sctp_get_af_specific(sa_addr->sa_family);
  if (!af) {
   retval = -EINVAL;
   goto err_bindx_add;
  }

  retval = sctp_do_bind(sk, (union sctp_addr *)sa_addr,
          af->sockaddr_len);

  addr_buf += af->sockaddr_len;

err_bindx_add:
  if (retval < 0) {

   if (cnt > 0)
    sctp_bindx_rem(sk, addrs, cnt);
   return retval;
  }
 }

 return retval;
}
