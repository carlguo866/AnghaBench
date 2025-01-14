
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_msg_ctx {scalar_t__ state; int mux; struct ecryptfs_message* msg; } ;
struct ecryptfs_message {int dummy; } ;


 scalar_t__ ECRYPTFS_MSG_CTX_STATE_DONE ;
 int ENOMSG ;
 long HZ ;
 long ecryptfs_message_wait_timeout ;
 int ecryptfs_msg_ctx_alloc_to_free (struct ecryptfs_msg_ctx*) ;
 int ecryptfs_msg_ctx_lists_mux ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long schedule_timeout_interruptible (long) ;

int ecryptfs_wait_for_response(struct ecryptfs_msg_ctx *msg_ctx,
          struct ecryptfs_message **msg)
{
 signed long timeout = ecryptfs_message_wait_timeout * HZ;
 int rc = 0;

sleep:
 timeout = schedule_timeout_interruptible(timeout);
 mutex_lock(&ecryptfs_msg_ctx_lists_mux);
 mutex_lock(&msg_ctx->mux);
 if (msg_ctx->state != ECRYPTFS_MSG_CTX_STATE_DONE) {
  if (timeout) {
   mutex_unlock(&msg_ctx->mux);
   mutex_unlock(&ecryptfs_msg_ctx_lists_mux);
   goto sleep;
  }
  rc = -ENOMSG;
 } else {
  *msg = msg_ctx->msg;
  msg_ctx->msg = ((void*)0);
 }
 ecryptfs_msg_ctx_alloc_to_free(msg_ctx);
 mutex_unlock(&msg_ctx->mux);
 mutex_unlock(&ecryptfs_msg_ctx_lists_mux);
 return rc;
}
