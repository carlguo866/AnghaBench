
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_cqp {int dev; int polarity; } ;
struct i40iw_local_mac_ipaddr_entry_info {int* mac_addr; int entry_idx; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQPSQ_MLIPA_IPTABLEIDX ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int ,int ) ;
 int LS_64_1 (int,int) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_add_local_mac_ipaddr_entry(
    struct i40iw_sc_cqp *cqp,
    struct i40iw_local_mac_ipaddr_entry_info *info,
    u64 scratch,
    bool post_sq)
{
 u64 *wqe;
 u64 temp, header;

 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 temp = info->mac_addr[5] |
  LS_64_1(info->mac_addr[4], 8) |
  LS_64_1(info->mac_addr[3], 16) |
  LS_64_1(info->mac_addr[2], 24) |
  LS_64_1(info->mac_addr[1], 32) |
  LS_64_1(info->mac_addr[0], 40);

 set_64bit_val(wqe, 32, temp);

 header = LS_64(info->entry_idx, I40IW_CQPSQ_MLIPA_IPTABLEIDX) |
   LS_64(I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE, I40IW_CQPSQ_OPCODE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "ADD_LOCAL_MAC_IPADDR WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq)
  i40iw_sc_cqp_post_sq(cqp);
 return 0;
}
