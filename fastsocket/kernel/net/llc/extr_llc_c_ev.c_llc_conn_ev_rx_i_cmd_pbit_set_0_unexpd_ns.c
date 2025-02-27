
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {scalar_t__ vR; int rw; } ;


 scalar_t__ LLC_I_GET_NS (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_I_PF_IS_0 (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_IS_CMD (struct llc_pdu_sn const*) ;
 scalar_t__ LLC_PDU_TYPE_IS_I (struct llc_pdu_sn const*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 TYPE_1__* llc_sk (struct sock*) ;
 int llc_util_ns_inside_rx_window (scalar_t__ const,scalar_t__ const,int ) ;

int llc_conn_ev_rx_i_cmd_pbit_set_0_unexpd_ns(struct sock *sk,
           struct sk_buff *skb)
{
 const struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);
 const u8 vr = llc_sk(sk)->vR;
 const u8 ns = LLC_I_GET_NS(pdu);

 return LLC_PDU_IS_CMD(pdu) && LLC_PDU_TYPE_IS_I(pdu) &&
        LLC_I_PF_IS_0(pdu) && ns != vr &&
        !llc_util_ns_inside_rx_window(ns, vr, llc_sk(sk)->rw) ? 0 : 1;
}
