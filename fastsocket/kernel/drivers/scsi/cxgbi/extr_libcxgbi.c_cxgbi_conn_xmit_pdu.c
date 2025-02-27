
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned int data_len; int len; } ;
struct iscsi_tcp_conn {struct cxgbi_conn* dd_data; } ;
struct iscsi_task {TYPE_2__* conn; struct iscsi_task* itt; int sc; } ;
struct cxgbi_task_data {struct sk_buff* skb; } ;
struct cxgbi_conn {TYPE_1__* cep; } ;
struct TYPE_5__ {int txdata_octets; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_4__ {int csk; } ;


 int CXGBI_DBG_ISCSI ;
 int CXGBI_DBG_PDU_TX ;
 int EAGAIN ;
 int ENOBUFS ;
 scalar_t__ ISCSI_DIGEST_SIZE ;
 int ISCSI_ERR_XMIT_FAILED ;
 int KERN_ERR ;
 int cxgbi_sock_send_pdus (int ,struct sk_buff*) ;
 int iscsi_conn_failure (TYPE_2__*,int ) ;
 int iscsi_conn_printk (int ,TYPE_2__*,char*,int) ;
 struct cxgbi_task_data* iscsi_task_cxgbi_data (struct iscsi_task*) ;
 int kfree_skb (struct sk_buff*) ;
 int log_debug (int,char*,struct iscsi_task*,...) ;

int cxgbi_conn_xmit_pdu(struct iscsi_task *task)
{
 struct iscsi_tcp_conn *tcp_conn = task->conn->dd_data;
 struct cxgbi_conn *cconn = tcp_conn->dd_data;
 struct cxgbi_task_data *tdata = iscsi_task_cxgbi_data(task);
 struct sk_buff *skb = tdata->skb;
 unsigned int datalen;
 int err;

 if (!skb) {
  log_debug(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
   "task 0x%p, skb NULL.\n", task);
  return 0;
 }

 datalen = skb->data_len;
 tdata->skb = ((void*)0);
 err = cxgbi_sock_send_pdus(cconn->cep->csk, skb);
 if (err > 0) {
  int pdulen = err;

  log_debug(1 << CXGBI_DBG_PDU_TX,
   "task 0x%p,0x%p, skb 0x%p, len %u/%u, rv %d.\n",
   task, task->sc, skb, skb->len, skb->data_len, err);

  if (task->conn->hdrdgst_en)
   pdulen += ISCSI_DIGEST_SIZE;

  if (datalen && task->conn->datadgst_en)
   pdulen += ISCSI_DIGEST_SIZE;

  task->conn->txdata_octets += pdulen;
  return 0;
 }

 if (err == -EAGAIN || err == -ENOBUFS) {
  log_debug(1 << CXGBI_DBG_PDU_TX,
   "task 0x%p, skb 0x%p, len %u/%u, %d EAGAIN.\n",
   task, skb, skb->len, skb->data_len, err);

  tdata->skb = skb;
  return err;
 }

 kfree_skb(skb);
 log_debug(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
  "itt 0x%x, skb 0x%p, len %u/%u, xmit err %d.\n",
  task->itt, skb, skb->len, skb->data_len, err);
 iscsi_conn_printk(KERN_ERR, task->conn, "xmit err %d.\n", err);
 iscsi_conn_failure(task->conn, ISCSI_ERR_XMIT_FAILED);
 return err;
}
