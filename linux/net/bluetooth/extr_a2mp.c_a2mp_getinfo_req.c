
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ dev_type; } ;
struct amp_mgr {int state; } ;
struct a2mp_info_rsp {int status; int id; } ;
struct a2mp_info_req {int id; } ;
struct a2mp_cmd {int ident; int len; } ;
typedef int rsp ;


 int A2MP_GETINFO_RSP ;
 int A2MP_STATUS_INVALID_CTRL_ID ;
 int BT_DBG (char*,int ) ;
 int EINVAL ;
 scalar_t__ HCI_AMP ;
 int HCI_OP_READ_LOCAL_AMP_INFO ;
 int READ_LOC_AMP_INFO ;
 int a2mp_send (struct amp_mgr*,int ,int ,int,struct a2mp_info_rsp*) ;
 int a2mp_send_getinfo_rsp (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int le16_to_cpu (int ) ;
 int read_local_amp_info_complete ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_getinfo_req(struct amp_mgr *mgr, struct sk_buff *skb,
       struct a2mp_cmd *hdr)
{
 struct a2mp_info_req *req = (void *) skb->data;
 struct hci_dev *hdev;
 struct hci_request hreq;
 int err = 0;

 if (le16_to_cpu(hdr->len) < sizeof(*req))
  return -EINVAL;

 BT_DBG("id %d", req->id);

 hdev = hci_dev_get(req->id);
 if (!hdev || hdev->dev_type != HCI_AMP) {
  struct a2mp_info_rsp rsp;

  rsp.id = req->id;
  rsp.status = A2MP_STATUS_INVALID_CTRL_ID;

  a2mp_send(mgr, A2MP_GETINFO_RSP, hdr->ident, sizeof(rsp),
     &rsp);

  goto done;
 }

 set_bit(READ_LOC_AMP_INFO, &mgr->state);
 hci_req_init(&hreq, hdev);
 hci_req_add(&hreq, HCI_OP_READ_LOCAL_AMP_INFO, 0, ((void*)0));
 err = hci_req_run(&hreq, read_local_amp_info_complete);
 if (err < 0)
  a2mp_send_getinfo_rsp(hdev);

done:
 if (hdev)
  hci_dev_put(hdev);

 skb_pull(skb, sizeof(*req));
 return 0;
}
