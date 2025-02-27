
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_UNICAST_4ADDR ;
 int batadv_send_skb_via_tt_generic (struct batadv_priv*,struct sk_buff*,int ,int,int *,unsigned short) ;

__attribute__((used)) static inline int batadv_send_skb_via_tt_4addr(struct batadv_priv *bat_priv,
            struct sk_buff *skb,
            int packet_subtype,
            u8 *dst_hint,
            unsigned short vid)
{
 return batadv_send_skb_via_tt_generic(bat_priv, skb,
           BATADV_UNICAST_4ADDR,
           packet_subtype, dst_hint, vid);
}
