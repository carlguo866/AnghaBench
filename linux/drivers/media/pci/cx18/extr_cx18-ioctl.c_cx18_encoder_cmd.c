
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int i_flags; int ana_capturing; } ;


 int CX18_CPU_CAPTURE_PAUSE ;
 int CX18_CPU_CAPTURE_RESUME ;
 int CX18_DEBUG_IOCTL (char*,...) ;
 int CX18_ERR (char*) ;
 int CX18_F_I_ENC_PAUSED ;
 int CX18_INVALID_TASK_HANDLE ;
 int EBADFD ;
 int EINVAL ;
 int EPERM ;




 int V4L2_ENC_CMD_STOP_AT_GOP_END ;
 int atomic_read (int *) ;
 int cx18_find_handle (struct cx18*) ;
 int cx18_mute (struct cx18*) ;
 int cx18_start_capture (struct cx18_open_id*) ;
 int cx18_stop_capture (struct cx18_open_id*,int) ;
 int cx18_unmute (struct cx18*) ;
 int cx18_vapi (struct cx18*,int ,int,int ) ;
 struct cx18_open_id* fh2id (void*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int cx18_encoder_cmd(struct file *file, void *fh,
    struct v4l2_encoder_cmd *enc)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;
 u32 h;

 switch (enc->cmd) {
 case 129:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_START\n");
  enc->flags = 0;
  return cx18_start_capture(id);

 case 128:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_STOP\n");
  enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
  cx18_stop_capture(id,
      enc->flags & V4L2_ENC_CMD_STOP_AT_GOP_END);
  break;

 case 131:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_PAUSE\n");
  enc->flags = 0;
  if (!atomic_read(&cx->ana_capturing))
   return -EPERM;
  if (test_and_set_bit(CX18_F_I_ENC_PAUSED, &cx->i_flags))
   return 0;
  h = cx18_find_handle(cx);
  if (h == CX18_INVALID_TASK_HANDLE) {
   CX18_ERR("Can't find valid task handle for V4L2_ENC_CMD_PAUSE\n");
   return -EBADFD;
  }
  cx18_mute(cx);
  cx18_vapi(cx, CX18_CPU_CAPTURE_PAUSE, 1, h);
  break;

 case 130:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_RESUME\n");
  enc->flags = 0;
  if (!atomic_read(&cx->ana_capturing))
   return -EPERM;
  if (!test_and_clear_bit(CX18_F_I_ENC_PAUSED, &cx->i_flags))
   return 0;
  h = cx18_find_handle(cx);
  if (h == CX18_INVALID_TASK_HANDLE) {
   CX18_ERR("Can't find valid task handle for V4L2_ENC_CMD_RESUME\n");
   return -EBADFD;
  }
  cx18_vapi(cx, CX18_CPU_CAPTURE_RESUME, 1, h);
  cx18_unmute(cx);
  break;

 default:
  CX18_DEBUG_IOCTL("Unknown cmd %d\n", enc->cmd);
  return -EINVAL;
 }
 return 0;
}
