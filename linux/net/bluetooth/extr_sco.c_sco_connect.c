
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_sndtimeo; scalar_t__ sk_state; } ;
struct sco_conn {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; int src; } ;
struct TYPE_2__ {scalar_t__ setting; int src; int dst; } ;


 int BDADDR_BREDR ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int *,int *) ;
 scalar_t__ BT_VOICE_TRANSPARENT ;
 int EHOSTUNREACH ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ESCO_LINK ;
 scalar_t__ IS_ERR (struct hci_conn*) ;
 int PTR_ERR (struct hci_conn*) ;
 int SCO_LINK ;
 int bacpy (int *,int *) ;
 int disable_esco ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_connect_sco (struct hci_dev*,int,int *,scalar_t__) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *,int ) ;
 scalar_t__ lmp_esco_capable (struct hci_dev*) ;
 int lmp_transp_capable (struct hci_dev*) ;
 int sco_chan_add (struct sco_conn*,struct sock*,int *) ;
 struct sco_conn* sco_conn_add (struct hci_conn*) ;
 TYPE_1__* sco_pi (struct sock*) ;
 int sco_sock_clear_timer (struct sock*) ;
 int sco_sock_set_timer (struct sock*,int ) ;

__attribute__((used)) static int sco_connect(struct sock *sk)
{
 struct sco_conn *conn;
 struct hci_conn *hcon;
 struct hci_dev *hdev;
 int err, type;

 BT_DBG("%pMR -> %pMR", &sco_pi(sk)->src, &sco_pi(sk)->dst);

 hdev = hci_get_route(&sco_pi(sk)->dst, &sco_pi(sk)->src, BDADDR_BREDR);
 if (!hdev)
  return -EHOSTUNREACH;

 hci_dev_lock(hdev);

 if (lmp_esco_capable(hdev) && !disable_esco)
  type = ESCO_LINK;
 else
  type = SCO_LINK;

 if (sco_pi(sk)->setting == BT_VOICE_TRANSPARENT &&
     (!lmp_transp_capable(hdev) || !lmp_esco_capable(hdev))) {
  err = -EOPNOTSUPP;
  goto done;
 }

 hcon = hci_connect_sco(hdev, type, &sco_pi(sk)->dst,
          sco_pi(sk)->setting);
 if (IS_ERR(hcon)) {
  err = PTR_ERR(hcon);
  goto done;
 }

 conn = sco_conn_add(hcon);
 if (!conn) {
  hci_conn_drop(hcon);
  err = -ENOMEM;
  goto done;
 }


 bacpy(&sco_pi(sk)->src, &hcon->src);

 err = sco_chan_add(conn, sk, ((void*)0));
 if (err)
  goto done;

 if (hcon->state == BT_CONNECTED) {
  sco_sock_clear_timer(sk);
  sk->sk_state = BT_CONNECTED;
 } else {
  sk->sk_state = BT_CONNECT;
  sco_sock_set_timer(sk, sk->sk_sndtimeo);
 }

done:
 hci_dev_unlock(hdev);
 hci_dev_put(hdev);
 return err;
}
