
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {scalar_t__ scb; scalar_t__ end_station; scalar_t__ send_sci; scalar_t__ encrypt; scalar_t__ encoding_sa; } ;
struct macsec_secy {int key_len; int replay_window; scalar_t__ replay_protect; scalar_t__ validate_frames; scalar_t__ protect_frames; scalar_t__ icv_len; int sci; struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {struct macsec_secy secy; } ;


 int EMSGSIZE ;
 int IFLA_MACSEC_CIPHER_SUITE ;
 int IFLA_MACSEC_ENCODING_SA ;
 int IFLA_MACSEC_ENCRYPT ;
 int IFLA_MACSEC_ES ;
 int IFLA_MACSEC_ICV_LEN ;
 int IFLA_MACSEC_INC_SCI ;
 int IFLA_MACSEC_PAD ;
 int IFLA_MACSEC_PROTECT ;
 int IFLA_MACSEC_REPLAY_PROTECT ;
 int IFLA_MACSEC_SCB ;
 int IFLA_MACSEC_SCI ;
 int IFLA_MACSEC_VALIDATION ;
 int IFLA_MACSEC_WINDOW ;
 int MACSEC_CIPHER_ID_GCM_AES_256 ;
 int MACSEC_DEFAULT_CIPHER_ID ;


 TYPE_1__* macsec_priv (struct net_device const*) ;
 scalar_t__ nla_put_sci (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int macsec_fill_info(struct sk_buff *skb,
       const struct net_device *dev)
{
 struct macsec_secy *secy = &macsec_priv(dev)->secy;
 struct macsec_tx_sc *tx_sc = &secy->tx_sc;
 u64 csid;

 switch (secy->key_len) {
 case 129:
  csid = MACSEC_DEFAULT_CIPHER_ID;
  break;
 case 128:
  csid = MACSEC_CIPHER_ID_GCM_AES_256;
  break;
 default:
  goto nla_put_failure;
 }

 if (nla_put_sci(skb, IFLA_MACSEC_SCI, secy->sci,
   IFLA_MACSEC_PAD) ||
     nla_put_u8(skb, IFLA_MACSEC_ICV_LEN, secy->icv_len) ||
     nla_put_u64_64bit(skb, IFLA_MACSEC_CIPHER_SUITE,
         csid, IFLA_MACSEC_PAD) ||
     nla_put_u8(skb, IFLA_MACSEC_ENCODING_SA, tx_sc->encoding_sa) ||
     nla_put_u8(skb, IFLA_MACSEC_ENCRYPT, tx_sc->encrypt) ||
     nla_put_u8(skb, IFLA_MACSEC_PROTECT, secy->protect_frames) ||
     nla_put_u8(skb, IFLA_MACSEC_INC_SCI, tx_sc->send_sci) ||
     nla_put_u8(skb, IFLA_MACSEC_ES, tx_sc->end_station) ||
     nla_put_u8(skb, IFLA_MACSEC_SCB, tx_sc->scb) ||
     nla_put_u8(skb, IFLA_MACSEC_REPLAY_PROTECT, secy->replay_protect) ||
     nla_put_u8(skb, IFLA_MACSEC_VALIDATION, secy->validate_frames) ||
     0)
  goto nla_put_failure;

 if (secy->replay_protect) {
  if (nla_put_u32(skb, IFLA_MACSEC_WINDOW, secy->replay_window))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
