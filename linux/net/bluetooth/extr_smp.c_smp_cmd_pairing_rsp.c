
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct smp_cmd_pairing {scalar_t__ auth_req; scalar_t__ oob_flag; int io_capability; int resp_key_dist; int max_key_size; } ;
struct smp_chan {int flags; int remote_key_dist; int prnd; int * prsp; int * preq; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ local_oob; } ;
struct TYPE_3__ {scalar_t__ role; scalar_t__ type; scalar_t__ pending_sec_level; struct hci_dev* hdev; } ;


 scalar_t__ ACL_LINK ;
 scalar_t__ AUTH_REQ_MASK (struct hci_dev*) ;
 int BT_DBG (char*,struct l2cap_conn*) ;
 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ HCI_ROLE_MASTER ;
 int HCI_SC_ONLY ;
 scalar_t__ JUST_CFM ;
 scalar_t__ JUST_WORKS ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 scalar_t__ SMP_AUTH_CT2 ;
 scalar_t__ SMP_AUTH_REQUIREMENTS ;
 scalar_t__ SMP_AUTH_SC ;
 scalar_t__ SMP_CMD_NOTSUPP ;
 int SMP_CMD_PAIRING_RSP ;
 int SMP_CMD_PUBLIC_KEY ;
 TYPE_2__* SMP_DEV (struct hci_dev*) ;
 scalar_t__ SMP_ENC_KEY_SIZE ;
 int SMP_FLAG_CFM_PENDING ;
 int SMP_FLAG_CT2 ;
 int SMP_FLAG_LOCAL_OOB ;
 int SMP_FLAG_SC ;
 int SMP_FLAG_TK_VALID ;
 scalar_t__ SMP_INVALID_PARAMS ;
 scalar_t__ SMP_OOB_PRESENT ;
 int SMP_SC_NO_DIST ;
 scalar_t__ SMP_UNSPECIFIED ;
 scalar_t__ check_enc_key_size (struct l2cap_conn*,scalar_t__) ;
 scalar_t__ get_auth_method (struct smp_chan*,int ,int ) ;
 int get_random_bytes (int ,int) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int memcpy (int *,struct smp_cmd_pairing*,int) ;
 scalar_t__ min (int ,int ) ;
 scalar_t__ sc_send_public_key (struct smp_chan*) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ smp_confirm (struct smp_chan*) ;
 int smp_distribute_keys (struct smp_chan*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tk_request (struct l2cap_conn*,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static u8 smp_cmd_pairing_rsp(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct smp_cmd_pairing *req, *rsp = (void *) skb->data;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_dev *hdev = conn->hcon->hdev;
 u8 key_size, auth;
 int ret;

 BT_DBG("conn %p", conn);

 if (skb->len < sizeof(*rsp))
  return SMP_INVALID_PARAMS;

 if (conn->hcon->role != HCI_ROLE_MASTER)
  return SMP_CMD_NOTSUPP;

 skb_pull(skb, sizeof(*rsp));

 req = (void *) &smp->preq[1];

 key_size = min(req->max_key_size, rsp->max_key_size);
 if (check_enc_key_size(conn, key_size))
  return SMP_ENC_KEY_SIZE;

 auth = rsp->auth_req & AUTH_REQ_MASK(hdev);

 if (hci_dev_test_flag(hdev, HCI_SC_ONLY) && !(auth & SMP_AUTH_SC))
  return SMP_AUTH_REQUIREMENTS;





 if (rsp->oob_flag == SMP_OOB_PRESENT && SMP_DEV(hdev)->local_oob)
  set_bit(SMP_FLAG_LOCAL_OOB, &smp->flags);

 smp->prsp[0] = SMP_CMD_PAIRING_RSP;
 memcpy(&smp->prsp[1], rsp, sizeof(*rsp));




 smp->remote_key_dist &= rsp->resp_key_dist;

 if ((req->auth_req & SMP_AUTH_CT2) && (auth & SMP_AUTH_CT2))
  set_bit(SMP_FLAG_CT2, &smp->flags);


 if (conn->hcon->type == ACL_LINK) {

  smp->remote_key_dist &= ~SMP_SC_NO_DIST;
  smp_distribute_keys(smp);
  return 0;
 }

 if ((req->auth_req & SMP_AUTH_SC) && (auth & SMP_AUTH_SC))
  set_bit(SMP_FLAG_SC, &smp->flags);
 else if (conn->hcon->pending_sec_level > BT_SECURITY_HIGH)
  conn->hcon->pending_sec_level = BT_SECURITY_HIGH;


 if (conn->hcon->pending_sec_level >= BT_SECURITY_HIGH) {
  u8 method;

  method = get_auth_method(smp, req->io_capability,
      rsp->io_capability);
  if (method == JUST_WORKS || method == JUST_CFM)
   return SMP_AUTH_REQUIREMENTS;
 }

 get_random_bytes(smp->prnd, sizeof(smp->prnd));




 smp->remote_key_dist &= rsp->resp_key_dist;

 if (test_bit(SMP_FLAG_SC, &smp->flags)) {

  smp->remote_key_dist &= ~SMP_SC_NO_DIST;
  SMP_ALLOW_CMD(smp, SMP_CMD_PUBLIC_KEY);
  return sc_send_public_key(smp);
 }

 auth |= req->auth_req;

 ret = tk_request(conn, 0, auth, req->io_capability, rsp->io_capability);
 if (ret)
  return SMP_UNSPECIFIED;

 set_bit(SMP_FLAG_CFM_PENDING, &smp->flags);


 if (test_bit(SMP_FLAG_TK_VALID, &smp->flags))
  return smp_confirm(smp);

 return 0;
}
