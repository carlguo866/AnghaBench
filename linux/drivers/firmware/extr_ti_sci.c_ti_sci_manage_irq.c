
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef void* u16 ;
typedef struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_req_manage_irq {void* secondary_host; void* vint_status_bit; void* global_event; void* vint; void* ia_id; void* dst_host_irq; void* dst_id; void* src_index; void* src_id; int valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,void*,int ,int,int) ;
 scalar_t__ ti_sci_is_response_ack (struct ti_sci_msg_hdr*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_manage_irq(const struct ti_sci_handle *handle,
        u32 valid_params, u16 src_id, u16 src_index,
        u16 dst_id, u16 dst_host_irq, u16 ia_id, u16 vint,
        u16 global_event, u8 vint_status_bit, u8 s_host,
        u16 type)
{
 struct ti_sci_msg_req_manage_irq *req;
 struct ti_sci_msg_hdr *resp;
 struct ti_sci_xfer *xfer;
 struct ti_sci_info *info;
 struct device *dev;
 int ret = 0;

 if (IS_ERR(handle))
  return PTR_ERR(handle);
 if (!handle)
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, type, TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_req_manage_irq *)xfer->xfer_buf;
 req->valid_params = valid_params;
 req->src_id = src_id;
 req->src_index = src_index;
 req->dst_id = dst_id;
 req->dst_host_irq = dst_host_irq;
 req->ia_id = ia_id;
 req->vint = vint;
 req->global_event = global_event;
 req->vint_status_bit = vint_status_bit;
 req->secondary_host = s_host;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;

 ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
