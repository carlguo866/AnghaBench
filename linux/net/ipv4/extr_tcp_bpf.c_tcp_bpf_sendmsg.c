
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int sk_err; TYPE_2__* sk_socket; } ;
struct sk_psock {size_t cork_bytes; struct sk_msg* cork; int eval; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ end; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct msghdr {int msg_flags; int msg_iter; } ;
struct TYPE_4__ {int flags; } ;


 int ENOSPC ;
 int MSG_DONTWAIT ;
 int MSG_NO_SHARED_FRAGS ;
 int MSG_SENDPAGE_DECRYPTED ;
 int SOCK_NOSPACE ;
 int __SK_NONE ;
 int lock_sock (struct sock*) ;
 scalar_t__ msg_data_left (struct msghdr*) ;
 int release_sock (struct sock*) ;
 int set_bit (int ,int *) ;
 int sk_msg_alloc (struct sock*,struct sk_msg*,scalar_t__,scalar_t__) ;
 int sk_msg_free (struct sock*,struct sk_msg*) ;
 int sk_msg_init (struct sk_msg*) ;
 int sk_msg_memcopy_from_iter (struct sock*,int *,struct sk_msg*,scalar_t__) ;
 int sk_msg_trim (struct sock*,struct sk_msg*,scalar_t__) ;
 struct sk_psock* sk_psock_get (struct sock*) ;
 int sk_psock_put (struct sock*,struct sk_psock*) ;
 int sk_stream_error (struct sock*,int,int) ;
 int sk_stream_memory_free (struct sock*) ;
 int sk_stream_wait_memory (struct sock*,long*) ;
 long sock_sndtimeo (struct sock*,int) ;
 int tcp_bpf_send_verdict (struct sock*,struct sk_psock*,struct sk_msg*,int*,int) ;
 int tcp_sendmsg (struct sock*,struct msghdr*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcp_bpf_sendmsg(struct sock *sk, struct msghdr *msg, size_t size)
{
 struct sk_msg tmp, *msg_tx = ((void*)0);
 int copied = 0, err = 0;
 struct sk_psock *psock;
 long timeo;
 int flags;


 flags = (msg->msg_flags & ~MSG_SENDPAGE_DECRYPTED);
 flags |= MSG_NO_SHARED_FRAGS;

 psock = sk_psock_get(sk);
 if (unlikely(!psock))
  return tcp_sendmsg(sk, msg, size);

 lock_sock(sk);
 timeo = sock_sndtimeo(sk, msg->msg_flags & MSG_DONTWAIT);
 while (msg_data_left(msg)) {
  bool enospc = 0;
  u32 copy, osize;

  if (sk->sk_err) {
   err = -sk->sk_err;
   goto out_err;
  }

  copy = msg_data_left(msg);
  if (!sk_stream_memory_free(sk))
   goto wait_for_sndbuf;
  if (psock->cork) {
   msg_tx = psock->cork;
  } else {
   msg_tx = &tmp;
   sk_msg_init(msg_tx);
  }

  osize = msg_tx->sg.size;
  err = sk_msg_alloc(sk, msg_tx, msg_tx->sg.size + copy, msg_tx->sg.end - 1);
  if (err) {
   if (err != -ENOSPC)
    goto wait_for_memory;
   enospc = 1;
   copy = msg_tx->sg.size - osize;
  }

  err = sk_msg_memcopy_from_iter(sk, &msg->msg_iter, msg_tx,
            copy);
  if (err < 0) {
   sk_msg_trim(sk, msg_tx, osize);
   goto out_err;
  }

  copied += copy;
  if (psock->cork_bytes) {
   if (size > psock->cork_bytes)
    psock->cork_bytes = 0;
   else
    psock->cork_bytes -= size;
   if (psock->cork_bytes && !enospc)
    goto out_err;

   psock->eval = __SK_NONE;
   psock->cork_bytes = 0;
  }

  err = tcp_bpf_send_verdict(sk, psock, msg_tx, &copied, flags);
  if (unlikely(err < 0))
   goto out_err;
  continue;
wait_for_sndbuf:
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
  err = sk_stream_wait_memory(sk, &timeo);
  if (err) {
   if (msg_tx && msg_tx != psock->cork)
    sk_msg_free(sk, msg_tx);
   goto out_err;
  }
 }
out_err:
 if (err < 0)
  err = sk_stream_error(sk, msg->msg_flags, err);
 release_sock(sk);
 sk_psock_put(sk, psock);
 return copied ? copied : err;
}
