
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; struct net_device* dev; scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int icv_len; } ;
struct TYPE_3__ {int tfm; } ;
struct macsec_rx_sa {TYPE_1__ key; } ;
struct macsec_eth_header {int tci_an; int packet_number; } ;
struct aead_request {int dummy; } ;
typedef int sci_t ;
struct TYPE_4__ {int valid; struct aead_request* req; int has_sci; } ;


 int EBADMSG ;
 int EINPROGRESS ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int MACSEC_TCI_E ;
 int aead_request_free (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,struct sk_buff*) ;
 int aead_request_set_crypt (struct aead_request*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct aead_request* macsec_alloc_req (int ,unsigned char**,struct scatterlist**,int) ;
 int macsec_decrypt_done ;
 int macsec_fill_iv (unsigned char*,int ,int ) ;
 int macsec_hdr_len (int ) ;
 TYPE_2__* macsec_skb_cb (struct sk_buff*) ;
 int ntohl (int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int skb_cow_data (struct sk_buff*,int ,struct sk_buff**) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,int ,int) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *macsec_decrypt(struct sk_buff *skb,
          struct net_device *dev,
          struct macsec_rx_sa *rx_sa,
          sci_t sci,
          struct macsec_secy *secy)
{
 int ret;
 struct scatterlist *sg;
 struct sk_buff *trailer;
 unsigned char *iv;
 struct aead_request *req;
 struct macsec_eth_header *hdr;
 u16 icv_len = secy->icv_len;

 macsec_skb_cb(skb)->valid = 0;
 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ret = skb_cow_data(skb, 0, &trailer);
 if (unlikely(ret < 0)) {
  kfree_skb(skb);
  return ERR_PTR(ret);
 }
 req = macsec_alloc_req(rx_sa->key.tfm, &iv, &sg, ret);
 if (!req) {
  kfree_skb(skb);
  return ERR_PTR(-ENOMEM);
 }

 hdr = (struct macsec_eth_header *)skb->data;
 macsec_fill_iv(iv, sci, ntohl(hdr->packet_number));

 sg_init_table(sg, ret);
 ret = skb_to_sgvec(skb, sg, 0, skb->len);
 if (unlikely(ret < 0)) {
  aead_request_free(req);
  kfree_skb(skb);
  return ERR_PTR(ret);
 }

 if (hdr->tci_an & MACSEC_TCI_E) {



  int len = skb->len - macsec_hdr_len(macsec_skb_cb(skb)->has_sci);

  aead_request_set_crypt(req, sg, sg, len, iv);
  aead_request_set_ad(req, macsec_hdr_len(macsec_skb_cb(skb)->has_sci));
  skb = skb_unshare(skb, GFP_ATOMIC);
  if (!skb) {
   aead_request_free(req);
   return ERR_PTR(-ENOMEM);
  }
 } else {

  aead_request_set_crypt(req, sg, sg, icv_len, iv);
  aead_request_set_ad(req, skb->len - icv_len);
 }

 macsec_skb_cb(skb)->req = req;
 skb->dev = dev;
 aead_request_set_callback(req, 0, macsec_decrypt_done, skb);

 dev_hold(dev);
 ret = crypto_aead_decrypt(req);
 if (ret == -EINPROGRESS) {
  return ERR_PTR(ret);
 } else if (ret != 0) {



  if (ret != -EBADMSG) {
   kfree_skb(skb);
   skb = ERR_PTR(ret);
  }
 } else {
  macsec_skb_cb(skb)->valid = 1;
 }
 dev_put(dev);

 aead_request_free(req);

 return skb;
}
