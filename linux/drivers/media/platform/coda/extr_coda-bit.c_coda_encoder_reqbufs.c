
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ type; scalar_t__ count; } ;
struct coda_q_data {int dummy; } ;
struct coda_ctx {int dummy; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int coda_alloc_context_buffers (struct coda_ctx*,struct coda_q_data*) ;
 int coda_free_context_buffers (struct coda_ctx*) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,scalar_t__) ;

__attribute__((used)) static int coda_encoder_reqbufs(struct coda_ctx *ctx,
    struct v4l2_requestbuffers *rb)
{
 struct coda_q_data *q_data_src;
 int ret;

 if (rb->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return 0;

 if (rb->count) {
  q_data_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
  ret = coda_alloc_context_buffers(ctx, q_data_src);
  if (ret < 0)
   return ret;
 } else {
  coda_free_context_buffers(ctx);
 }

 return 0;
}
