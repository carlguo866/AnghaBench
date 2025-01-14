
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion; } ;
struct tls_sw_context_rx {unsigned char control; int async_capable; int async_notify; TYPE_1__ async_wait; int decrypt_pending; int rx_list; scalar_t__ recv_pkt; } ;
struct tls_prot_info {scalar_t__ version; int overhead_size; } ;
struct tls_msg {unsigned char control; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct strp_msg {size_t full_len; scalar_t__ offset; } ;
struct sock {int dummy; } ;
struct sk_psock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int msg_iter; } ;
typedef size_t ssize_t ;
typedef int control ;


 int EBADMSG ;
 int EINPROGRESS ;
 int EIO ;
 int IP_RECVERR ;
 int MSG_CTRUNC ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_ERRQUEUE ;
 int MSG_PEEK ;
 int MSG_WAITALL ;
 int SOL_IP ;
 int SOL_TLS ;
 scalar_t__ TLS_1_3_VERSION ;
 int TLS_GET_RECORD_TYPE ;
 unsigned char TLS_RECORD_TYPE_DATA ;
 int WRITE_ONCE (int ,int) ;
 int __tcp_bpf_recvmsg (struct sock*,struct sk_psock*,struct msghdr*,size_t,int) ;
 scalar_t__ atomic_read (int *) ;
 int crypto_wait_req (int,TYPE_1__*) ;
 int decrypt_skb_update (struct sock*,struct sk_buff*,int *,int*,int*,int) ;
 int iov_iter_is_kvec (int *) ;
 int lock_sock (struct sock*) ;
 int process_rx_list (struct tls_sw_context_rx*,struct msghdr*,unsigned char*,int*,size_t,size_t,int,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,unsigned char*) ;
 int reinit_completion (int *) ;
 int release_sock (struct sock*) ;
 struct sk_psock* sk_psock_get (struct sock*) ;
 int sk_psock_put (struct sock*,struct sk_psock*) ;
 int skb_copy_datagram_msg (struct sk_buff*,scalar_t__,struct msghdr*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int smp_store_mb (int ,int) ;
 int sock_rcvlowat (struct sock*,int,size_t) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int sock_recv_errqueue (struct sock*,struct msghdr*,size_t,int ,int ) ;
 struct strp_msg* strp_msg (struct sk_buff*) ;
 int tls_err_abort (struct sock*,int) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_msg* tls_msg (struct sk_buff*) ;
 scalar_t__ tls_sw_advance_skb (struct sock*,struct sk_buff*,int) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;
 struct sk_buff* tls_wait_data (struct sock*,struct sk_psock*,int,long,int*) ;
 scalar_t__ unlikely (int) ;

int tls_sw_recvmsg(struct sock *sk,
     struct msghdr *msg,
     size_t len,
     int nonblock,
     int flags,
     int *addr_len)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct sk_psock *psock;
 unsigned char control = 0;
 ssize_t decrypted = 0;
 struct strp_msg *rxm;
 struct tls_msg *tlm;
 struct sk_buff *skb;
 ssize_t copied = 0;
 bool cmsg = 0;
 int target, err = 0;
 long timeo;
 bool is_kvec = iov_iter_is_kvec(&msg->msg_iter);
 bool is_peek = flags & MSG_PEEK;
 int num_async = 0;

 flags |= nonblock;

 if (unlikely(flags & MSG_ERRQUEUE))
  return sock_recv_errqueue(sk, msg, len, SOL_IP, IP_RECVERR);

 psock = sk_psock_get(sk);
 lock_sock(sk);


 err = process_rx_list(ctx, msg, &control, &cmsg, 0, len, 0,
         is_peek);
 if (err < 0) {
  tls_err_abort(sk, err);
  goto end;
 } else {
  copied = err;
 }

 if (len <= copied)
  goto recv_end;

 target = sock_rcvlowat(sk, flags & MSG_WAITALL, len);
 len = len - copied;
 timeo = sock_rcvtimeo(sk, flags & MSG_DONTWAIT);

 while (len && (decrypted + copied < target || ctx->recv_pkt)) {
  bool retain_skb = 0;
  bool zc = 0;
  int to_decrypt;
  int chunk = 0;
  bool async_capable;
  bool async = 0;

  skb = tls_wait_data(sk, psock, flags, timeo, &err);
  if (!skb) {
   if (psock) {
    int ret = __tcp_bpf_recvmsg(sk, psock,
           msg, len, flags);

    if (ret > 0) {
     decrypted += ret;
     len -= ret;
     continue;
    }
   }
   goto recv_end;
  } else {
   tlm = tls_msg(skb);
   if (prot->version == TLS_1_3_VERSION)
    tlm->control = 0;
   else
    tlm->control = ctx->control;
  }

  rxm = strp_msg(skb);

  to_decrypt = rxm->full_len - prot->overhead_size;

  if (to_decrypt <= len && !is_kvec && !is_peek &&
      ctx->control == TLS_RECORD_TYPE_DATA &&
      prot->version != TLS_1_3_VERSION)
   zc = 1;


  if (ctx->control == TLS_RECORD_TYPE_DATA)
   async_capable = ctx->async_capable;
  else
   async_capable = 0;

  err = decrypt_skb_update(sk, skb, &msg->msg_iter,
      &chunk, &zc, async_capable);
  if (err < 0 && err != -EINPROGRESS) {
   tls_err_abort(sk, EBADMSG);
   goto recv_end;
  }

  if (err == -EINPROGRESS) {
   async = 1;
   num_async++;
  } else if (prot->version == TLS_1_3_VERSION) {
   tlm->control = ctx->control;
  }
  if (!control)
   control = tlm->control;
  else if (control != tlm->control)
   goto recv_end;

  if (!cmsg) {
   int cerr;

   cerr = put_cmsg(msg, SOL_TLS, TLS_GET_RECORD_TYPE,
     sizeof(control), &control);
   cmsg = 1;
   if (control != TLS_RECORD_TYPE_DATA) {
    if (cerr || msg->msg_flags & MSG_CTRUNC) {
     err = -EIO;
     goto recv_end;
    }
   }
  }

  if (async)
   goto pick_next_record;

  if (!zc) {
   if (rxm->full_len > len) {
    retain_skb = 1;
    chunk = len;
   } else {
    chunk = rxm->full_len;
   }

   err = skb_copy_datagram_msg(skb, rxm->offset,
          msg, chunk);
   if (err < 0)
    goto recv_end;

   if (!is_peek) {
    rxm->offset = rxm->offset + chunk;
    rxm->full_len = rxm->full_len - chunk;
   }
  }

pick_next_record:
  if (chunk > len)
   chunk = len;

  decrypted += chunk;
  len -= chunk;


  if (async || is_peek || retain_skb) {
   skb_queue_tail(&ctx->rx_list, skb);
   skb = ((void*)0);
  }

  if (tls_sw_advance_skb(sk, skb, chunk)) {




   msg->msg_flags |= MSG_EOR;
   if (ctx->control != TLS_RECORD_TYPE_DATA)
    goto recv_end;
  } else {
   break;
  }
 }

recv_end:
 if (num_async) {

  smp_store_mb(ctx->async_notify, 1);
  if (atomic_read(&ctx->decrypt_pending)) {
   err = crypto_wait_req(-EINPROGRESS, &ctx->async_wait);
   if (err) {

    tls_err_abort(sk, err);
    copied = 0;
    decrypted = 0;
    goto end;
   }
  } else {
   reinit_completion(&ctx->async_wait.completion);
  }
  WRITE_ONCE(ctx->async_notify, 0);


  if (is_peek || is_kvec)
   err = process_rx_list(ctx, msg, &control, &cmsg, copied,
           decrypted, 0, is_peek);
  else
   err = process_rx_list(ctx, msg, &control, &cmsg, 0,
           decrypted, 1, is_peek);
  if (err < 0) {
   tls_err_abort(sk, err);
   copied = 0;
   goto end;
  }
 }

 copied += decrypted;

end:
 release_sock(sk);
 if (psock)
  sk_psock_put(sk, psock);
 return copied ? : err;
}
