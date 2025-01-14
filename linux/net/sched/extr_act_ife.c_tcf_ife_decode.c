
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tcf_result {int dummy; } ;
struct TYPE_3__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_ife_info {int tcf_action; TYPE_1__ common; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {TYPE_2__* dev; int protocol; } ;
struct TYPE_4__ {int hard_header_len; } ;


 int TC_ACT_SHOT ;
 scalar_t__ WARN_ON (int) ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 scalar_t__ find_decode_metaid (struct sk_buff*,struct tcf_ife_info*,int,int,int *) ;
 int * ife_decode (struct sk_buff*,int*) ;
 int * ife_tlv_meta_decode (int *,int *,int*,int*,int *) ;
 int * ife_tlv_meta_next (int *) ;
 int pr_info_ratelimited (char*,int,int) ;
 int qstats_drop_inc (int ) ;
 int qstats_overlimit_inc (int ) ;
 scalar_t__ skb_at_tc_ingress (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_ife_info* to_ife (struct tc_action const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_ife_decode(struct sk_buff *skb, const struct tc_action *a,
     struct tcf_result *res)
{
 struct tcf_ife_info *ife = to_ife(a);
 int action = ife->tcf_action;
 u8 *ifehdr_end;
 u8 *tlv_data;
 u16 metalen;

 bstats_cpu_update(this_cpu_ptr(ife->common.cpu_bstats), skb);
 tcf_lastuse_update(&ife->tcf_tm);

 if (skb_at_tc_ingress(skb))
  skb_push(skb, skb->dev->hard_header_len);

 tlv_data = ife_decode(skb, &metalen);
 if (unlikely(!tlv_data)) {
  qstats_drop_inc(this_cpu_ptr(ife->common.cpu_qstats));
  return TC_ACT_SHOT;
 }

 ifehdr_end = tlv_data + metalen;
 for (; tlv_data < ifehdr_end; tlv_data = ife_tlv_meta_next(tlv_data)) {
  u8 *curr_data;
  u16 mtype;
  u16 dlen;

  curr_data = ife_tlv_meta_decode(tlv_data, ifehdr_end, &mtype,
      &dlen, ((void*)0));
  if (!curr_data) {
   qstats_drop_inc(this_cpu_ptr(ife->common.cpu_qstats));
   return TC_ACT_SHOT;
  }

  if (find_decode_metaid(skb, ife, mtype, dlen, curr_data)) {



   pr_info_ratelimited("Unknown metaid %d dlen %d\n",
         mtype, dlen);
   qstats_overlimit_inc(this_cpu_ptr(ife->common.cpu_qstats));
  }
 }

 if (WARN_ON(tlv_data != ifehdr_end)) {
  qstats_drop_inc(this_cpu_ptr(ife->common.cpu_qstats));
  return TC_ACT_SHOT;
 }

 skb->protocol = eth_type_trans(skb, skb->dev);
 skb_reset_network_header(skb);

 return action;
}
