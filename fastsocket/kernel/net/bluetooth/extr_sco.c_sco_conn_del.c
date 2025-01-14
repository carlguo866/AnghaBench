
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sco_conn {int dummy; } ;
struct hci_conn {struct sco_conn* sco_data; } ;


 int BT_DBG (char*,struct hci_conn*,struct sco_conn*,int) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int kfree (struct sco_conn*) ;
 int sco_chan_del (struct sock*,int) ;
 struct sock* sco_chan_get (struct sco_conn*) ;
 int sco_sock_clear_timer (struct sock*) ;
 int sco_sock_kill (struct sock*) ;

__attribute__((used)) static int sco_conn_del(struct hci_conn *hcon, int err)
{
 struct sco_conn *conn;
 struct sock *sk;

 if (!(conn = hcon->sco_data))
  return 0;

 BT_DBG("hcon %p conn %p, err %d", hcon, conn, err);


 if ((sk = sco_chan_get(conn))) {
  bh_lock_sock(sk);
  sco_sock_clear_timer(sk);
  sco_chan_del(sk, err);
  bh_unlock_sock(sk);
  sco_sock_kill(sk);
 }

 hcon->sco_data = ((void*)0);
 kfree(conn);
 return 0;
}
