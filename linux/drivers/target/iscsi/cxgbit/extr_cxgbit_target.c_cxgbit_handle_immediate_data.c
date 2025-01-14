
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct skb_shared_info {int * frags; } ;
struct scatterlist {int dummy; } ;
struct iscsi_scsi_req {int dummy; } ;
struct iscsi_conn {TYPE_2__* sess; struct cxgbit_sock* context; } ;
struct TYPE_6__ {int se_cmd_flags; int t_data_nents; scalar_t__ data_length; struct scatterlist* t_data_sg; } ;
struct iscsi_cmd {scalar_t__ write_data_done; int istate_lock; int i_state; int cmd_flags; TYPE_3__ se_cmd; struct iscsi_conn* conn; } ;
struct cxgbit_sock {int skb; } ;
struct cxgbit_lro_pdu_cb {int flags; size_t dfrag_idx; scalar_t__ dlen; } ;
struct cxgbit_cmd {int release; struct scatterlist sg; } ;
typedef int skb_frag_t ;
struct TYPE_5__ {TYPE_1__* sess_ops; } ;
struct TYPE_4__ {int ErrorRecoveryLevel; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 int ICF_GOT_LAST_DATAOUT ;
 int IMMEDIATE_DATA_CANNOT_RECOVER ;
 int IMMEDIATE_DATA_ERL1_CRC_FAILURE ;
 int IMMEDIATE_DATA_NORMAL_OPERATION ;
 int ISCSI_REASON_DATA_DIGEST_ERROR ;
 int ISTATE_RECEIVED_LAST_DATAOUT ;
 int PAGE_SIZE ;
 int PDUCBF_RX_DCRC_ERR ;
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int cxgbit_skb_copy_to_sg (int ,struct scatterlist*,int ,int ) ;
 int get_page (int ) ;
 struct cxgbit_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int max (unsigned long,int ) ;
 int pr_err (char*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;
 int skb_frag_off (int *) ;
 int skb_frag_page (int *) ;
 int skb_frag_size (int *) ;
 struct skb_shared_info* skb_shinfo (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
cxgbit_handle_immediate_data(struct iscsi_cmd *cmd, struct iscsi_scsi_req *hdr,
        u32 length)
{
 struct iscsi_conn *conn = cmd->conn;
 struct cxgbit_sock *csk = conn->context;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);

 if (pdu_cb->flags & PDUCBF_RX_DCRC_ERR) {
  pr_err("ImmediateData CRC32C DataDigest error\n");
  if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
   pr_err("Unable to recover from"
          " Immediate Data digest failure while"
          " in ERL=0.\n");
   iscsit_reject_cmd(cmd, ISCSI_REASON_DATA_DIGEST_ERROR,
       (unsigned char *)hdr);
   return IMMEDIATE_DATA_CANNOT_RECOVER;
  }

  iscsit_reject_cmd(cmd, ISCSI_REASON_DATA_DIGEST_ERROR,
      (unsigned char *)hdr);
  return IMMEDIATE_DATA_ERL1_CRC_FAILURE;
 }

 if (cmd->se_cmd.se_cmd_flags & SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC) {
  struct cxgbit_cmd *ccmd = iscsit_priv_cmd(cmd);
  struct skb_shared_info *ssi = skb_shinfo(csk->skb);
  skb_frag_t *dfrag = &ssi->frags[pdu_cb->dfrag_idx];

  sg_init_table(&ccmd->sg, 1);
  sg_set_page(&ccmd->sg, skb_frag_page(dfrag),
    skb_frag_size(dfrag), skb_frag_off(dfrag));
  get_page(skb_frag_page(dfrag));

  cmd->se_cmd.t_data_sg = &ccmd->sg;
  cmd->se_cmd.t_data_nents = 1;

  ccmd->release = 1;
 } else {
  struct scatterlist *sg = &cmd->se_cmd.t_data_sg[0];
  u32 sg_nents = max(1UL, DIV_ROUND_UP(pdu_cb->dlen, PAGE_SIZE));

  cxgbit_skb_copy_to_sg(csk->skb, sg, sg_nents, 0);
 }

 cmd->write_data_done += pdu_cb->dlen;

 if (cmd->write_data_done == cmd->se_cmd.data_length) {
  spin_lock_bh(&cmd->istate_lock);
  cmd->cmd_flags |= ICF_GOT_LAST_DATAOUT;
  cmd->i_state = ISTATE_RECEIVED_LAST_DATAOUT;
  spin_unlock_bh(&cmd->istate_lock);
 }

 return IMMEDIATE_DATA_NORMAL_OPERATION;
}
