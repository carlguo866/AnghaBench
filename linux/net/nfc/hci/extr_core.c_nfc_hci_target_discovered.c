
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct nfc_target {int supported_protocols; int nfcid1_len; int hci_reader_gate; int nfcid1; int sel_res; int sens_res; } ;
struct nfc_hci_dev {int ndev; TYPE_1__* ops; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* complete_target_discovered ) (struct nfc_hci_dev*,int,struct nfc_target*) ;int (* target_from_gate ) (struct nfc_hci_dev*,int,struct nfc_target*) ;} ;


 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 int NFC_HCI_RF_READER_A_ATQA ;

 int NFC_HCI_RF_READER_A_SAK ;
 int NFC_HCI_RF_READER_A_UID ;

 int NFC_NFCID1_MAXSIZE ;
 int NFC_PROTO_ISO14443_B_MASK ;
 int be16_to_cpu (int ) ;
 int kfree (struct nfc_target*) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_target* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int const,int ,struct sk_buff**) ;
 int nfc_hci_sak_to_protocol (int ) ;
 int nfc_targets_found (int ,struct nfc_target*,int) ;
 int pr_debug (char*,int) ;
 int stub1 (struct nfc_hci_dev*,int,struct nfc_target*) ;
 int stub2 (struct nfc_hci_dev*,int,struct nfc_target*) ;
 int stub3 (struct nfc_hci_dev*,int,struct nfc_target*) ;

int nfc_hci_target_discovered(struct nfc_hci_dev *hdev, u8 gate)
{
 struct nfc_target *targets;
 struct sk_buff *atqa_skb = ((void*)0);
 struct sk_buff *sak_skb = ((void*)0);
 struct sk_buff *uid_skb = ((void*)0);
 int r;

 pr_debug("from gate %d\n", gate);

 targets = kzalloc(sizeof(struct nfc_target), GFP_KERNEL);
 if (targets == ((void*)0))
  return -ENOMEM;

 switch (gate) {
 case 129:
  r = nfc_hci_get_param(hdev, 129,
          NFC_HCI_RF_READER_A_ATQA, &atqa_skb);
  if (r < 0)
   goto exit;

  r = nfc_hci_get_param(hdev, 129,
          NFC_HCI_RF_READER_A_SAK, &sak_skb);
  if (r < 0)
   goto exit;

  if (atqa_skb->len != 2 || sak_skb->len != 1) {
   r = -EPROTO;
   goto exit;
  }

  targets->supported_protocols =
    nfc_hci_sak_to_protocol(sak_skb->data[0]);
  if (targets->supported_protocols == 0xffffffff) {
   r = -EPROTO;
   goto exit;
  }

  targets->sens_res = be16_to_cpu(*(__be16 *)atqa_skb->data);
  targets->sel_res = sak_skb->data[0];

  r = nfc_hci_get_param(hdev, 129,
          NFC_HCI_RF_READER_A_UID, &uid_skb);
  if (r < 0)
   goto exit;

  if (uid_skb->len == 0 || uid_skb->len > NFC_NFCID1_MAXSIZE) {
   r = -EPROTO;
   goto exit;
  }

  memcpy(targets->nfcid1, uid_skb->data, uid_skb->len);
  targets->nfcid1_len = uid_skb->len;

  if (hdev->ops->complete_target_discovered) {
   r = hdev->ops->complete_target_discovered(hdev, gate,
          targets);
   if (r < 0)
    goto exit;
  }
  break;
 case 128:
  targets->supported_protocols = NFC_PROTO_ISO14443_B_MASK;
  break;
 default:
  if (hdev->ops->target_from_gate)
   r = hdev->ops->target_from_gate(hdev, gate, targets);
  else
   r = -EPROTO;
  if (r < 0)
   goto exit;

  if (hdev->ops->complete_target_discovered) {
   r = hdev->ops->complete_target_discovered(hdev, gate,
          targets);
   if (r < 0)
    goto exit;
  }
  break;
 }


 if (targets->hci_reader_gate == 0x00)
  targets->hci_reader_gate = gate;

 r = nfc_targets_found(hdev->ndev, targets, 1);

exit:
 kfree(targets);
 kfree_skb(atqa_skb);
 kfree_skb(sak_skb);
 kfree_skb(uid_skb);

 return r;
}
