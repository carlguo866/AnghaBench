
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensb_res {int* proto_info; int nfcid0; } ;
struct digital_attrib_req {int param1; int param2; int param3; int param4; int nfcid0; int cmd; } ;


 int DIGITAL_ATTRIB_P1_TR0_DEFAULT ;
 int DIGITAL_ATTRIB_P1_TR1_DEFAULT ;
 int DIGITAL_ATTRIB_P2_LISTEN_POLL_1 ;
 int DIGITAL_ATTRIB_P2_MAX_FRAME_256 ;
 int DIGITAL_ATTRIB_P2_POLL_LISTEN_1 ;
 int DIGITAL_ATTRIB_P4_DID (int ) ;
 int DIGITAL_CMD_ATTRIB_REQ ;
 int ENOMEM ;
 int digital_in_recv_attrib_res ;
 int digital_in_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int,int ,struct nfc_target*) ;
 struct sk_buff* digital_skb_alloc (struct nfc_digital_dev*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 struct digital_attrib_req* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int digital_in_send_attrib_req(struct nfc_digital_dev *ddev,
          struct nfc_target *target,
          struct digital_sensb_res *sensb_res)
{
 struct digital_attrib_req *attrib_req;
 struct sk_buff *skb;
 int rc;

 skb = digital_skb_alloc(ddev, sizeof(*attrib_req));
 if (!skb)
  return -ENOMEM;

 attrib_req = skb_put(skb, sizeof(*attrib_req));

 attrib_req->cmd = DIGITAL_CMD_ATTRIB_REQ;
 memcpy(attrib_req->nfcid0, sensb_res->nfcid0,
        sizeof(attrib_req->nfcid0));
 attrib_req->param1 = DIGITAL_ATTRIB_P1_TR0_DEFAULT |
        DIGITAL_ATTRIB_P1_TR1_DEFAULT;
 attrib_req->param2 = DIGITAL_ATTRIB_P2_LISTEN_POLL_1 |
        DIGITAL_ATTRIB_P2_POLL_LISTEN_1 |
        DIGITAL_ATTRIB_P2_MAX_FRAME_256;
 attrib_req->param3 = sensb_res->proto_info[1] & 0x07;
 attrib_req->param4 = DIGITAL_ATTRIB_P4_DID(0);

 rc = digital_in_send_cmd(ddev, skb, 30, digital_in_recv_attrib_res,
     target);
 if (rc)
  kfree_skb(skb);

 return rc;
}
