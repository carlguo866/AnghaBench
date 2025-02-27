
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct venus_inst {scalar_t__ session_type; unsigned int error; TYPE_1__* ops; } ;
struct venus_core {int dummy; } ;
struct hfi_msg_session_fbd_uncompressed_plane0_pkt {scalar_t__ time_stamp_hi; scalar_t__ time_stamp_lo; scalar_t__ flags; scalar_t__ offset; scalar_t__ filled_len; scalar_t__ picture_type; scalar_t__ output_tag; int stream_id; unsigned int error_type; } ;
struct hfi_msg_session_fbd_compressed_pkt {scalar_t__ time_stamp_hi; scalar_t__ time_stamp_lo; scalar_t__ flags; scalar_t__ offset; scalar_t__ filled_len; scalar_t__ picture_type; scalar_t__ output_tag; unsigned int error_type; } ;
struct TYPE_2__ {int (* buf_done ) (struct venus_inst*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;} ;


 scalar_t__ HFI_BUFFERFLAG_EOS ;
 scalar_t__ HFI_BUFFERFLAG_TIMESTAMPINVALID ;
 scalar_t__ HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFFER_OUTPUT2 ;
 unsigned int HFI_ERR_SESSION_INVALID_PARAMETER ;







 scalar_t__ V4L2_BUF_FLAG_BFRAME ;
 scalar_t__ V4L2_BUF_FLAG_KEYFRAME ;
 scalar_t__ V4L2_BUF_FLAG_LAST ;
 scalar_t__ V4L2_BUF_FLAG_PFRAME ;
 scalar_t__ VIDC_SESSION_TYPE_DEC ;
 scalar_t__ VIDC_SESSION_TYPE_ENC ;
 int stub1 (struct venus_inst*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void hfi_session_ftb_done(struct venus_core *core,
     struct venus_inst *inst, void *packet)
{
 u32 session_type = inst->session_type;
 u64 timestamp_us = 0;
 u32 timestamp_hi = 0, timestamp_lo = 0;
 unsigned int error;
 u32 flags = 0, hfi_flags = 0, offset = 0, filled_len = 0;
 u32 pic_type = 0, buffer_type = 0, output_tag = -1;

 if (session_type == VIDC_SESSION_TYPE_ENC) {
  struct hfi_msg_session_fbd_compressed_pkt *pkt = packet;

  timestamp_hi = pkt->time_stamp_hi;
  timestamp_lo = pkt->time_stamp_lo;
  hfi_flags = pkt->flags;
  offset = pkt->offset;
  filled_len = pkt->filled_len;
  pic_type = pkt->picture_type;
  output_tag = pkt->output_tag;
  buffer_type = HFI_BUFFER_OUTPUT;

  error = pkt->error_type;
 } else if (session_type == VIDC_SESSION_TYPE_DEC) {
  struct hfi_msg_session_fbd_uncompressed_plane0_pkt *pkt =
   packet;

  timestamp_hi = pkt->time_stamp_hi;
  timestamp_lo = pkt->time_stamp_lo;
  hfi_flags = pkt->flags;
  offset = pkt->offset;
  filled_len = pkt->filled_len;
  pic_type = pkt->picture_type;
  output_tag = pkt->output_tag;

  if (pkt->stream_id == 0)
   buffer_type = HFI_BUFFER_OUTPUT;
  else if (pkt->stream_id == 1)
   buffer_type = HFI_BUFFER_OUTPUT2;

  error = pkt->error_type;
 } else {
  error = HFI_ERR_SESSION_INVALID_PARAMETER;
 }

 if (buffer_type != HFI_BUFFER_OUTPUT &&
     buffer_type != HFI_BUFFER_OUTPUT2)
  goto done;

 if (hfi_flags & HFI_BUFFERFLAG_EOS)
  flags |= V4L2_BUF_FLAG_LAST;

 switch (pic_type) {
 case 130:
 case 131:
  flags |= V4L2_BUF_FLAG_KEYFRAME;
  break;
 case 129:
  flags |= V4L2_BUF_FLAG_PFRAME;
  break;
 case 132:
  flags |= V4L2_BUF_FLAG_BFRAME;
  break;
 case 134:
 case 128:
 case 133:
 default:
  break;
 }

 if (!(hfi_flags & HFI_BUFFERFLAG_TIMESTAMPINVALID) && filled_len) {
  timestamp_us = timestamp_hi;
  timestamp_us = (timestamp_us << 32) | timestamp_lo;
 }

done:
 inst->error = error;
 inst->ops->buf_done(inst, buffer_type, output_tag, filled_len,
       offset, flags, hfi_flags, timestamp_us);
}
