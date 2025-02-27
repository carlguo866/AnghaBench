
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venus_inst {unsigned int input_buf_size; unsigned int num_input_bufs; unsigned int num_output_bufs; unsigned int output_buf_size; int lock; int codec_state; int height; int width; TYPE_2__* fmt_cap; int out_height; int out_width; TYPE_1__* fmt_out; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int num_planes; int pixfmt; } ;
struct TYPE_3__ {unsigned int num_planes; int pixfmt; } ;


 int EINVAL ;


 int VENUS_DEC_STATE_CAPTURE_SETUP ;
 int VENUS_DEC_STATE_STOPPED ;
 unsigned int max (unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct venus_inst* vb2_get_drv_priv (struct vb2_queue*) ;
 int vdec_num_buffers (struct venus_inst*,unsigned int*,unsigned int*) ;
 int vdec_session_init (struct venus_inst*) ;
 unsigned int venus_helper_get_framesz (int ,int ,int ) ;
 unsigned int venus_helper_get_opb_size (struct venus_inst*) ;

__attribute__((used)) static int vdec_queue_setup(struct vb2_queue *q,
       unsigned int *num_buffers, unsigned int *num_planes,
       unsigned int sizes[], struct device *alloc_devs[])
{
 struct venus_inst *inst = vb2_get_drv_priv(q);
 unsigned int in_num, out_num;
 int ret = 0;

 if (*num_planes) {
  unsigned int output_buf_size = venus_helper_get_opb_size(inst);

  if (q->type == 128 &&
      *num_planes != inst->fmt_out->num_planes)
   return -EINVAL;

  if (q->type == 129 &&
      *num_planes != inst->fmt_cap->num_planes)
   return -EINVAL;

  if (q->type == 128 &&
      sizes[0] < inst->input_buf_size)
   return -EINVAL;

  if (q->type == 129 &&
      sizes[0] < output_buf_size)
   return -EINVAL;

  return 0;
 }

 ret = vdec_session_init(inst);
 if (ret)
  return ret;

 ret = vdec_num_buffers(inst, &in_num, &out_num);
 if (ret)
  return ret;

 switch (q->type) {
 case 128:
  *num_planes = inst->fmt_out->num_planes;
  sizes[0] = venus_helper_get_framesz(inst->fmt_out->pixfmt,
          inst->out_width,
          inst->out_height);
  sizes[0] = max(sizes[0], inst->input_buf_size);
  inst->input_buf_size = sizes[0];
  *num_buffers = max(*num_buffers, in_num);
  inst->num_input_bufs = *num_buffers;
  inst->num_output_bufs = out_num;
  break;
 case 129:
  *num_planes = inst->fmt_cap->num_planes;
  sizes[0] = venus_helper_get_framesz(inst->fmt_cap->pixfmt,
          inst->width,
          inst->height);
  inst->output_buf_size = sizes[0];
  *num_buffers = max(*num_buffers, out_num);
  inst->num_output_bufs = *num_buffers;

  mutex_lock(&inst->lock);
  if (inst->codec_state == VENUS_DEC_STATE_CAPTURE_SETUP)
   inst->codec_state = VENUS_DEC_STATE_STOPPED;
  mutex_unlock(&inst->lock);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
