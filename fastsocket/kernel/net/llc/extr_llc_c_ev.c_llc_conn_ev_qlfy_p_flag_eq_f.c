
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_flag; } ;


 int llc_pdu_decode_pf_bit (struct sk_buff*,scalar_t__*) ;
 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ev_qlfy_p_flag_eq_f(struct sock *sk, struct sk_buff *skb)
{
 u8 f_bit;

 llc_pdu_decode_pf_bit(skb, &f_bit);
 return llc_sk(sk)->p_flag == f_bit ? 0 : 1;
}
