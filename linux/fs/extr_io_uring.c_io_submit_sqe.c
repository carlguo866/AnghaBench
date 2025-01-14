
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqe_submit {struct io_uring_sqe* sqe; } ;
struct io_uring_sqe {int flags; int user_data; } ;
struct io_submit_state {int dummy; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int link_list; int submit; int flags; int list; int user_data; } ;


 int EAGAIN ;
 int EINVAL ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IOSQE_IO_LINK ;
 int REQ_F_LINK ;
 int SQE_VALID_FLAGS ;
 int io_cqring_add_event (struct io_ring_ctx*,int ,int) ;
 int io_free_req (struct io_kiocb*) ;
 struct io_kiocb* io_get_req (struct io_ring_ctx*,struct io_submit_state*) ;
 int io_queue_sqe (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ;
 int io_req_set_file (struct io_ring_ctx*,struct sqe_submit*,struct io_submit_state*,struct io_kiocb*) ;
 struct io_uring_sqe* kmemdup (struct io_uring_sqe*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct sqe_submit*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void io_submit_sqe(struct io_ring_ctx *ctx, struct sqe_submit *s,
     struct io_submit_state *state, struct io_kiocb **link)
{
 struct io_uring_sqe *sqe_copy;
 struct io_kiocb *req;
 int ret;


 if (unlikely(s->sqe->flags & ~SQE_VALID_FLAGS)) {
  ret = -EINVAL;
  goto err;
 }

 req = io_get_req(ctx, state);
 if (unlikely(!req)) {
  ret = -EAGAIN;
  goto err;
 }

 ret = io_req_set_file(ctx, s, state, req);
 if (unlikely(ret)) {
err_req:
  io_free_req(req);
err:
  io_cqring_add_event(ctx, s->sqe->user_data, ret);
  return;
 }

 req->user_data = s->sqe->user_data;
 if (*link) {
  struct io_kiocb *prev = *link;

  sqe_copy = kmemdup(s->sqe, sizeof(*sqe_copy), GFP_KERNEL);
  if (!sqe_copy) {
   ret = -EAGAIN;
   goto err_req;
  }

  s->sqe = sqe_copy;
  memcpy(&req->submit, s, sizeof(*s));
  list_add_tail(&req->list, &prev->link_list);
 } else if (s->sqe->flags & IOSQE_IO_LINK) {
  req->flags |= REQ_F_LINK;

  memcpy(&req->submit, s, sizeof(*s));
  INIT_LIST_HEAD(&req->link_list);
  *link = req;
 } else {
  io_queue_sqe(ctx, req, s);
 }
}
