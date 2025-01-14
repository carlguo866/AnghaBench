
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mgmt_rp_read_local_oob_ext_data {int eir_len; int type; int eir; } ;
struct mgmt_pending_cmd {int sk; struct mgmt_cp_read_local_oob_ext_data* param; } ;
struct mgmt_cp_read_local_oob_ext_data {int type; } ;
struct hci_rp_read_local_oob_ext_data {scalar_t__* rand256; scalar_t__* hash256; scalar_t__* rand192; scalar_t__* hash192; } ;
struct hci_rp_read_local_oob_data {scalar_t__* rand; scalar_t__* hash; } ;
struct hci_dev {int id; scalar_t__* dev_class; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int EIR_CLASS_OF_DEV ;
 int EIR_SSP_HASH_C192 ;
 int EIR_SSP_HASH_C256 ;
 int EIR_SSP_RAND_R192 ;
 int EIR_SSP_RAND_R256 ;
 int GFP_KERNEL ;
 int HCI_MGMT_OOB_DATA_EVENTS ;
 scalar_t__ HCI_OP_READ_LOCAL_OOB_DATA ;
 int HCI_SC_ONLY ;
 int MGMT_EV_LOCAL_OOB_DATA_UPDATED ;
 int MGMT_OP_READ_LOCAL_OOB_EXT_DATA ;
 scalar_t__ MGMT_STATUS_FAILED ;
 scalar_t__ MGMT_STATUS_SUCCESS ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ eir_append_data (int ,scalar_t__,int ,scalar_t__*,int) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_sock_set_flag (int ,int ) ;
 int kfree (struct mgmt_rp_read_local_oob_ext_data*) ;
 struct mgmt_rp_read_local_oob_ext_data* kmalloc (int,int ) ;
 int mgmt_cmd_complete (int ,int ,int ,scalar_t__,struct mgmt_rp_read_local_oob_ext_data*,int) ;
 int mgmt_limited_event (int ,struct hci_dev*,struct mgmt_rp_read_local_oob_ext_data*,int,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 scalar_t__ mgmt_status (scalar_t__) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void read_local_oob_ext_data_complete(struct hci_dev *hdev, u8 status,
          u16 opcode, struct sk_buff *skb)
{
 const struct mgmt_cp_read_local_oob_ext_data *mgmt_cp;
 struct mgmt_rp_read_local_oob_ext_data *mgmt_rp;
 u8 *h192, *r192, *h256, *r256;
 struct mgmt_pending_cmd *cmd;
 u16 eir_len;
 int err;

 BT_DBG("%s status %u", hdev->name, status);

 cmd = pending_find(MGMT_OP_READ_LOCAL_OOB_EXT_DATA, hdev);
 if (!cmd)
  return;

 mgmt_cp = cmd->param;

 if (status) {
  status = mgmt_status(status);
  eir_len = 0;

  h192 = ((void*)0);
  r192 = ((void*)0);
  h256 = ((void*)0);
  r256 = ((void*)0);
 } else if (opcode == HCI_OP_READ_LOCAL_OOB_DATA) {
  struct hci_rp_read_local_oob_data *rp;

  if (skb->len != sizeof(*rp)) {
   status = MGMT_STATUS_FAILED;
   eir_len = 0;
  } else {
   status = MGMT_STATUS_SUCCESS;
   rp = (void *)skb->data;

   eir_len = 5 + 18 + 18;
   h192 = rp->hash;
   r192 = rp->rand;
   h256 = ((void*)0);
   r256 = ((void*)0);
  }
 } else {
  struct hci_rp_read_local_oob_ext_data *rp;

  if (skb->len != sizeof(*rp)) {
   status = MGMT_STATUS_FAILED;
   eir_len = 0;
  } else {
   status = MGMT_STATUS_SUCCESS;
   rp = (void *)skb->data;

   if (hci_dev_test_flag(hdev, HCI_SC_ONLY)) {
    eir_len = 5 + 18 + 18;
    h192 = ((void*)0);
    r192 = ((void*)0);
   } else {
    eir_len = 5 + 18 + 18 + 18 + 18;
    h192 = rp->hash192;
    r192 = rp->rand192;
   }

   h256 = rp->hash256;
   r256 = rp->rand256;
  }
 }

 mgmt_rp = kmalloc(sizeof(*mgmt_rp) + eir_len, GFP_KERNEL);
 if (!mgmt_rp)
  goto done;

 if (status)
  goto send_rsp;

 eir_len = eir_append_data(mgmt_rp->eir, 0, EIR_CLASS_OF_DEV,
      hdev->dev_class, 3);

 if (h192 && r192) {
  eir_len = eir_append_data(mgmt_rp->eir, eir_len,
       EIR_SSP_HASH_C192, h192, 16);
  eir_len = eir_append_data(mgmt_rp->eir, eir_len,
       EIR_SSP_RAND_R192, r192, 16);
 }

 if (h256 && r256) {
  eir_len = eir_append_data(mgmt_rp->eir, eir_len,
       EIR_SSP_HASH_C256, h256, 16);
  eir_len = eir_append_data(mgmt_rp->eir, eir_len,
       EIR_SSP_RAND_R256, r256, 16);
 }

send_rsp:
 mgmt_rp->type = mgmt_cp->type;
 mgmt_rp->eir_len = cpu_to_le16(eir_len);

 err = mgmt_cmd_complete(cmd->sk, hdev->id,
    MGMT_OP_READ_LOCAL_OOB_EXT_DATA, status,
    mgmt_rp, sizeof(*mgmt_rp) + eir_len);
 if (err < 0 || status)
  goto done;

 hci_sock_set_flag(cmd->sk, HCI_MGMT_OOB_DATA_EVENTS);

 err = mgmt_limited_event(MGMT_EV_LOCAL_OOB_DATA_UPDATED, hdev,
     mgmt_rp, sizeof(*mgmt_rp) + eir_len,
     HCI_MGMT_OOB_DATA_EVENTS, cmd->sk);
done:
 kfree(mgmt_rp);
 mgmt_pending_remove(cmd);
}
