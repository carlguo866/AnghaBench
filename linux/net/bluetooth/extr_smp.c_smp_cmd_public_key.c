
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_dev {scalar_t__ method; struct smp_cmd_pairing_confirm* prnd; scalar_t__ remote_pk; scalar_t__ local_pk; int tfm_cmac; int flags; scalar_t__ passkey_round; scalar_t__ dhkey; struct crypto_kpp* tfm_ecdh; scalar_t__ pcnf; struct smp_cmd_pairing_confirm* rr; } ;
struct smp_cmd_public_key {int dummy; } ;
struct smp_cmd_pairing_confirm {int confirm_val; } ;
struct smp_chan {scalar_t__ method; struct smp_cmd_pairing_confirm* prnd; scalar_t__ remote_pk; scalar_t__ local_pk; int tfm_cmac; int flags; scalar_t__ passkey_round; scalar_t__ dhkey; struct crypto_kpp* tfm_ecdh; scalar_t__ pcnf; struct smp_cmd_pairing_confirm* rr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {int name; struct l2cap_chan* smp_data; } ;
struct hci_conn {int passkey_notify; scalar_t__ out; int dst_type; int type; int dst; scalar_t__ passkey_entered; int pending_sec_level; struct hci_dev* hdev; } ;
struct crypto_kpp {int dummy; } ;
typedef int cfm ;


 int BT_DBG (char*,struct l2cap_conn*,...) ;
 int BT_SECURITY_FIPS ;
 int BT_SECURITY_MEDIUM ;
 scalar_t__ DSP_PASSKEY ;
 scalar_t__ JUST_CFM ;
 scalar_t__ JUST_WORKS ;
 scalar_t__ REQ_OOB ;
 scalar_t__ REQ_PASSKEY ;
 int SMP_ALLOW_CMD (struct smp_dev*,int ) ;
 int SMP_CMD_PAIRING_CONFIRM ;
 int SMP_CMD_PAIRING_RANDOM ;
 int SMP_CMD_PUBLIC_KEY ;
 int SMP_CONFIRM_FAILED ;
 int SMP_DBG (char*,scalar_t__) ;
 int SMP_FLAG_DEBUG_KEY ;
 int SMP_FLAG_LOCAL_OOB ;
 int SMP_FLAG_REMOTE_OOB ;
 int SMP_FLAG_REMOTE_PK ;
 int SMP_FLAG_WAIT_USER ;
 int SMP_INVALID_PARAMS ;
 int SMP_UNSPECIFIED ;
 scalar_t__ compute_ecdh_secret (struct crypto_kpp*,scalar_t__,scalar_t__) ;
 scalar_t__ crypto_memneq (int ,scalar_t__,int) ;
 int debug_pk ;
 int get_random_bytes (int*,int) ;
 int memcpy (scalar_t__,struct smp_cmd_public_key*,int) ;
 scalar_t__ mgmt_user_passkey_notify (struct hci_dev*,int *,int ,int ,int,scalar_t__) ;
 scalar_t__ mgmt_user_passkey_request (struct hci_dev*,int *,int ,int ) ;
 int sc_passkey_round (struct smp_dev*,int ) ;
 scalar_t__ sc_select_method (struct smp_dev*) ;
 int sc_send_public_key (struct smp_dev*) ;
 int set_bit (int ,int *) ;
 int smp_f4 (int ,scalar_t__,scalar_t__,struct smp_cmd_pairing_confirm*,int ,int ) ;
 int smp_send_cmd (struct l2cap_conn*,int ,int,struct smp_cmd_pairing_confirm*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int smp_cmd_public_key(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct smp_cmd_public_key *key = (void *) skb->data;
 struct hci_conn *hcon = conn->hcon;
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_dev *hdev = hcon->hdev;
 struct crypto_kpp *tfm_ecdh;
 struct smp_cmd_pairing_confirm cfm;
 int err;

 BT_DBG("conn %p", conn);

 if (skb->len < sizeof(*key))
  return SMP_INVALID_PARAMS;

 memcpy(smp->remote_pk, key, 64);

 if (test_bit(SMP_FLAG_REMOTE_OOB, &smp->flags)) {
  err = smp_f4(smp->tfm_cmac, smp->remote_pk, smp->remote_pk,
        smp->rr, 0, cfm.confirm_val);
  if (err)
   return SMP_UNSPECIFIED;

  if (crypto_memneq(cfm.confirm_val, smp->pcnf, 16))
   return SMP_CONFIRM_FAILED;
 }




 if (!hcon->out) {
  err = sc_send_public_key(smp);
  if (err)
   return err;
 }

 SMP_DBG("Remote Public Key X: %32phN", smp->remote_pk);
 SMP_DBG("Remote Public Key Y: %32phN", smp->remote_pk + 32);




 if (test_bit(SMP_FLAG_LOCAL_OOB, &smp->flags)) {
  struct l2cap_chan *hchan = hdev->smp_data;
  struct smp_dev *smp_dev;

  if (!hchan || !hchan->data)
   return SMP_UNSPECIFIED;

  smp_dev = hchan->data;

  tfm_ecdh = smp_dev->tfm_ecdh;
 } else {
  tfm_ecdh = smp->tfm_ecdh;
 }

 if (compute_ecdh_secret(tfm_ecdh, smp->remote_pk, smp->dhkey))
  return SMP_UNSPECIFIED;

 SMP_DBG("DHKey %32phN", smp->dhkey);

 set_bit(SMP_FLAG_REMOTE_PK, &smp->flags);

 smp->method = sc_select_method(smp);

 BT_DBG("%s selected method 0x%02x", hdev->name, smp->method);


 if (smp->method == JUST_WORKS || smp->method == JUST_CFM)
  hcon->pending_sec_level = BT_SECURITY_MEDIUM;
 else
  hcon->pending_sec_level = BT_SECURITY_FIPS;

 if (!crypto_memneq(debug_pk, smp->remote_pk, 64))
  set_bit(SMP_FLAG_DEBUG_KEY, &smp->flags);

 if (smp->method == DSP_PASSKEY) {
  get_random_bytes(&hcon->passkey_notify,
     sizeof(hcon->passkey_notify));
  hcon->passkey_notify %= 1000000;
  hcon->passkey_entered = 0;
  smp->passkey_round = 0;
  if (mgmt_user_passkey_notify(hdev, &hcon->dst, hcon->type,
          hcon->dst_type,
          hcon->passkey_notify,
          hcon->passkey_entered))
   return SMP_UNSPECIFIED;
  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_CONFIRM);
  return sc_passkey_round(smp, SMP_CMD_PUBLIC_KEY);
 }

 if (smp->method == REQ_OOB) {
  if (hcon->out)
   smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM,
         sizeof(smp->prnd), smp->prnd);

  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_RANDOM);

  return 0;
 }

 if (hcon->out)
  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_CONFIRM);

 if (smp->method == REQ_PASSKEY) {
  if (mgmt_user_passkey_request(hdev, &hcon->dst, hcon->type,
           hcon->dst_type))
   return SMP_UNSPECIFIED;
  SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_CONFIRM);
  set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
  return 0;
 }




 if (conn->hcon->out)
  return 0;

 err = smp_f4(smp->tfm_cmac, smp->local_pk, smp->remote_pk, smp->prnd,
       0, cfm.confirm_val);
 if (err)
  return SMP_UNSPECIFIED;

 smp_send_cmd(conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cfm), &cfm);
 SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_RANDOM);

 return 0;
}
