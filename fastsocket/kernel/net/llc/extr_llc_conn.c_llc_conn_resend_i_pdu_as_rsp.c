
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int vS; int pdu_unack_q; } ;
struct llc_pdu_sn {int dummy; } ;


 int LLC_2_SEQ_NBR_MODULO ;
 int LLC_I_GET_NS (struct llc_pdu_sn*) ;
 int LLC_PDU_RSP ;
 int llc_conn_remove_acked_pdus (struct sock*,scalar_t__,int *) ;
 int llc_conn_send_pdus (struct sock*) ;
 int llc_pdu_set_cmd_rsp (struct sk_buff*,int ) ;
 int llc_pdu_set_pf_bit (struct sk_buff*,scalar_t__) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void llc_conn_resend_i_pdu_as_rsp(struct sock *sk, u8 nr, u8 first_f_bit)
{
 struct sk_buff *skb;
 u16 nbr_unack_pdus;
 struct llc_sock *llc = llc_sk(sk);
 u8 howmany_resend = 0;

 llc_conn_remove_acked_pdus(sk, nr, &nbr_unack_pdus);
 if (!nbr_unack_pdus)
  goto out;




 while ((skb = skb_dequeue(&llc->pdu_unack_q)) != ((void*)0)) {
  struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

  llc_pdu_set_cmd_rsp(skb, LLC_PDU_RSP);
  llc_pdu_set_pf_bit(skb, first_f_bit);
  skb_queue_tail(&sk->sk_write_queue, skb);
  first_f_bit = 0;
  llc->vS = LLC_I_GET_NS(pdu);
  howmany_resend++;
 }
 if (howmany_resend > 0)
  llc->vS = (llc->vS + 1) % LLC_2_SEQ_NBR_MODULO;

 llc_conn_send_pdus(sk);
out:;
}
