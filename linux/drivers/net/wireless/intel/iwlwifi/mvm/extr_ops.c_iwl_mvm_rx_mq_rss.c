
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int cmd; int group_id; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int DATA_PATH_GROUP ;
 int FRAME_RELEASE ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int LEGACY_GROUP ;
 int REPLY_RX_MPDU_CMD ;
 int RX_QUEUES_NOTIFICATION ;
 int WIDE_ID (int ,int ) ;
 int iwl_mvm_rx_frame_release (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,unsigned int) ;
 int iwl_mvm_rx_mpdu_mq (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,unsigned int) ;
 int iwl_mvm_rx_queue_notif (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,unsigned int) ;
 scalar_t__ likely (int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_mvm_rx_mq_rss(struct iwl_op_mode *op_mode,
         struct napi_struct *napi,
         struct iwl_rx_cmd_buffer *rxb,
         unsigned int queue)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 u16 cmd = WIDE_ID(pkt->hdr.group_id, pkt->hdr.cmd);

 if (unlikely(cmd == WIDE_ID(LEGACY_GROUP, FRAME_RELEASE)))
  iwl_mvm_rx_frame_release(mvm, napi, rxb, queue);
 else if (unlikely(cmd == WIDE_ID(DATA_PATH_GROUP,
      RX_QUEUES_NOTIFICATION)))
  iwl_mvm_rx_queue_notif(mvm, napi, rxb, queue);
 else if (likely(cmd == WIDE_ID(LEGACY_GROUP, REPLY_RX_MPDU_CMD)))
  iwl_mvm_rx_mpdu_mq(mvm, napi, rxb, queue);
}
