
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_xfer {scalar_t__ xfer_buf; } ;
struct ti_sci_msg_rm_udmap_flow_cfg_req {int rx_ps_location; int rx_fdq3_qnum; int rx_fdq2_qnum; int rx_fdq1_qnum; int rx_fdq0_sz0_qnum; int rx_dest_tag_lo_sel; int rx_dest_tag_hi_sel; int rx_src_tag_lo_sel; int rx_src_tag_hi_sel; int rx_dest_tag_lo; int rx_dest_tag_hi; int rx_src_tag_lo; int rx_src_tag_hi; int rx_dest_qnum; int rx_sop_offset; int rx_desc_type; int rx_error_handling; int rx_psinfo_present; int rx_einfo_present; int flow_index; int nav_id; int valid_params; } ;
struct ti_sci_msg_rm_udmap_flow_cfg {int flow_index; int rx_ps_location; int rx_fdq3_qnum; int rx_fdq2_qnum; int rx_fdq1_qnum; int rx_fdq0_sz0_qnum; int rx_dest_tag_lo_sel; int rx_dest_tag_hi_sel; int rx_src_tag_lo_sel; int rx_src_tag_hi_sel; int rx_dest_tag_lo; int rx_dest_tag_hi; int rx_src_tag_lo; int rx_src_tag_hi; int rx_dest_qnum; int rx_sop_offset; int rx_desc_type; int rx_error_handling; int rx_psinfo_present; int rx_einfo_present; int nav_id; int valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {struct device* dev; int minfo; } ;
struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ti_sci_xfer*) ;
 scalar_t__ IS_ERR_OR_NULL (struct ti_sci_handle const*) ;
 int PTR_ERR (struct ti_sci_xfer*) ;
 int TISCI_MSG_RM_UDMAP_FLOW_CFG ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_handle const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 scalar_t__ ti_sci_is_response_ack (struct ti_sci_msg_hdr*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer*) ;

__attribute__((used)) static int ti_sci_cmd_rm_udmap_rx_flow_cfg(const struct ti_sci_handle *handle,
   const struct ti_sci_msg_rm_udmap_flow_cfg *params)
{
 struct ti_sci_msg_rm_udmap_flow_cfg_req *req;
 struct ti_sci_msg_hdr *resp;
 struct ti_sci_xfer *xfer;
 struct ti_sci_info *info;
 struct device *dev;
 int ret = 0;

 if (IS_ERR_OR_NULL(handle))
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_FLOW_CFG,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "RX_FL_CFG: Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_rm_udmap_flow_cfg_req *)xfer->xfer_buf;
 req->valid_params = params->valid_params;
 req->nav_id = params->nav_id;
 req->flow_index = params->flow_index;
 req->rx_einfo_present = params->rx_einfo_present;
 req->rx_psinfo_present = params->rx_psinfo_present;
 req->rx_error_handling = params->rx_error_handling;
 req->rx_desc_type = params->rx_desc_type;
 req->rx_sop_offset = params->rx_sop_offset;
 req->rx_dest_qnum = params->rx_dest_qnum;
 req->rx_src_tag_hi = params->rx_src_tag_hi;
 req->rx_src_tag_lo = params->rx_src_tag_lo;
 req->rx_dest_tag_hi = params->rx_dest_tag_hi;
 req->rx_dest_tag_lo = params->rx_dest_tag_lo;
 req->rx_src_tag_hi_sel = params->rx_src_tag_hi_sel;
 req->rx_src_tag_lo_sel = params->rx_src_tag_lo_sel;
 req->rx_dest_tag_hi_sel = params->rx_dest_tag_hi_sel;
 req->rx_dest_tag_lo_sel = params->rx_dest_tag_lo_sel;
 req->rx_fdq0_sz0_qnum = params->rx_fdq0_sz0_qnum;
 req->rx_fdq1_qnum = params->rx_fdq1_qnum;
 req->rx_fdq2_qnum = params->rx_fdq2_qnum;
 req->rx_fdq3_qnum = params->rx_fdq3_qnum;
 req->rx_ps_location = params->rx_ps_location;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "RX_FL_CFG: Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
 ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);
 dev_dbg(info->dev, "RX_FL_CFG: %u ret:%d\n", params->flow_index, ret);
 return ret;
}
