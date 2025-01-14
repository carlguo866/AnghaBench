
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct vicodec_q_data {int sizeimage; int info; } ;
struct vicodec_dev {int v4l2_dev; } ;
struct TYPE_8__ {int flags; int size; } ;
struct TYPE_7__ {int * buf; } ;
struct v4l2_fwht_state {TYPE_4__ header; int info; TYPE_3__ ref_frame; int ref_frame_ts; int * compressed_frame; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct vicodec_ctx {unsigned int comp_max_size; struct v4l2_fwht_state state; scalar_t__ is_stateless; scalar_t__ is_enc; TYPE_2__ fh; int hdl; struct vicodec_dev* dev; } ;
struct TYPE_5__ {struct media_request* req; } ;
struct vb2_buffer {scalar_t__ state; TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {int flags; struct vb2_buffer vb2_buf; } ;
struct vb2_queue {struct vb2_buffer** bufs; } ;
struct media_request {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int FWHT_FL_I_FRAME ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_BUF_FLAG_PFRAME ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ VB2_BUF_STATE_ERROR ;
 int copy_cap_to_ref (int *,int ,struct v4l2_fwht_state*) ;
 struct vicodec_q_data* get_q_data (struct vicodec_ctx*,int ) ;
 int htonl (int ) ;
 int ntohl (int ) ;
 int update_state_from_header (struct vicodec_ctx*) ;
 int v4l2_ctrl_request_setup (struct media_request*,int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_fwht_decode (struct v4l2_fwht_state*,int *,int *) ;
 int v4l2_fwht_encode (struct v4l2_fwht_state*,int *,int *) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 int vb2_find_timestamp (struct vb2_queue*,int ,int ) ;
 int vb2_get_plane_payload (struct vb2_buffer*,int ) ;
 void* vb2_plane_vaddr (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int) ;

__attribute__((used)) static int device_process(struct vicodec_ctx *ctx,
     struct vb2_v4l2_buffer *src_vb,
     struct vb2_v4l2_buffer *dst_vb)
{
 struct vicodec_dev *dev = ctx->dev;
 struct v4l2_fwht_state *state = &ctx->state;
 u8 *p_src, *p_dst;
 int ret = 0;

 if (ctx->is_enc || ctx->is_stateless)
  p_src = vb2_plane_vaddr(&src_vb->vb2_buf, 0);
 else
  p_src = state->compressed_frame;

 if (ctx->is_stateless) {
  struct media_request *src_req = src_vb->vb2_buf.req_obj.req;

  ret = v4l2_ctrl_request_setup(src_req, &ctx->hdl);
  if (ret)
   return ret;
  update_state_from_header(ctx);

  ctx->state.header.size =
   htonl(vb2_get_plane_payload(&src_vb->vb2_buf, 0));




  if (!(ntohl(ctx->state.header.flags) & FWHT_FL_I_FRAME)) {
   struct vb2_buffer *ref_vb2_buf;
   int ref_buf_idx;
   struct vb2_queue *vq_cap =
    v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
      V4L2_BUF_TYPE_VIDEO_CAPTURE);

   ref_buf_idx = vb2_find_timestamp(vq_cap,
        ctx->state.ref_frame_ts, 0);
   if (ref_buf_idx < 0)
    return -EINVAL;

   ref_vb2_buf = vq_cap->bufs[ref_buf_idx];
   if (ref_vb2_buf->state == VB2_BUF_STATE_ERROR)
    ret = -EINVAL;
   ctx->state.ref_frame.buf =
    vb2_plane_vaddr(ref_vb2_buf, 0);
  } else {
   ctx->state.ref_frame.buf = ((void*)0);
  }
 }
 p_dst = vb2_plane_vaddr(&dst_vb->vb2_buf, 0);
 if (!p_src || !p_dst) {
  v4l2_err(&dev->v4l2_dev,
    "Acquiring kernel pointers to buffers failed\n");
  return -EFAULT;
 }

 if (ctx->is_enc) {
  struct vicodec_q_data *q_src;
  int comp_sz_or_errcode;

  q_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
  state->info = q_src->info;
  comp_sz_or_errcode = v4l2_fwht_encode(state, p_src, p_dst);
  if (comp_sz_or_errcode < 0)
   return comp_sz_or_errcode;
  vb2_set_plane_payload(&dst_vb->vb2_buf, 0, comp_sz_or_errcode);
 } else {
  struct vicodec_q_data *q_dst;
  unsigned int comp_frame_size = ntohl(ctx->state.header.size);

  q_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
  if (comp_frame_size > ctx->comp_max_size)
   return -EINVAL;
  state->info = q_dst->info;
  ret = v4l2_fwht_decode(state, p_src, p_dst);
  if (ret < 0)
   return ret;
  if (!ctx->is_stateless)
   copy_cap_to_ref(p_dst, ctx->state.info, &ctx->state);

  vb2_set_plane_payload(&dst_vb->vb2_buf, 0, q_dst->sizeimage);
  if (ntohl(ctx->state.header.flags) & FWHT_FL_I_FRAME)
   dst_vb->flags |= V4L2_BUF_FLAG_KEYFRAME;
  else
   dst_vb->flags |= V4L2_BUF_FLAG_PFRAME;
 }
 return ret;
}
