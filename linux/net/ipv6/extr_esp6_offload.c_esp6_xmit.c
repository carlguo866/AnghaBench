
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int spi; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct xfrm_state {TYPE_2__ id; struct crypto_aead* data; TYPE_1__ xso; } ;
struct TYPE_8__ {scalar_t__ hi; scalar_t__ low; } ;
struct xfrm_offload {int flags; TYPE_3__ seq; int proto; } ;
struct sk_buff {scalar_t__ dev; int len; } ;
struct ipv6hdr {int dummy; } ;
struct ip_esp_hdr {int seq_no; int spi; } ;
struct esp_info {int inplace; int tfclen; int clen; int plen; int tailen; scalar_t__ nfrags; int seqno; int proto; } ;
struct crypto_aead {int dummy; } ;
typedef int netdev_features_t ;
typedef scalar_t__ __u32 ;
struct TYPE_10__ {int payload_len; } ;
struct TYPE_9__ {scalar_t__ gso_segs; } ;


 void* ALIGN (int,int) ;
 int CRYPTO_FALLBACK ;
 int EINVAL ;
 int IPV6_MAXPLEN ;
 int NETIF_F_HW_ESP ;
 int XFRM_GSO_SEGMENT ;
 int cpu_to_be64 (scalar_t__) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;
 scalar_t__ esp6_output_head (struct xfrm_state*,struct sk_buff*,struct esp_info*) ;
 int esp6_output_tail (struct xfrm_state*,struct sk_buff*,struct esp_info*) ;
 int htonl (scalar_t__) ;
 int htons (int) ;
 struct ip_esp_hdr* ip_esp_hdr (struct sk_buff*) ;
 TYPE_5__* ipv6_hdr (struct sk_buff*) ;
 int secpath_reset (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static int esp6_xmit(struct xfrm_state *x, struct sk_buff *skb, netdev_features_t features)
{
 int len;
 int err;
 int alen;
 int blksize;
 struct xfrm_offload *xo;
 struct ip_esp_hdr *esph;
 struct crypto_aead *aead;
 struct esp_info esp;
 bool hw_offload = 1;
 __u32 seq;

 esp.inplace = 1;

 xo = xfrm_offload(skb);

 if (!xo)
  return -EINVAL;

 if (!(features & NETIF_F_HW_ESP) || x->xso.dev != skb->dev) {
  xo->flags |= CRYPTO_FALLBACK;
  hw_offload = 0;
 }

 esp.proto = xo->proto;



 aead = x->data;
 alen = crypto_aead_authsize(aead);

 esp.tfclen = 0;


 blksize = ALIGN(crypto_aead_blocksize(aead), 4);
 esp.clen = ALIGN(skb->len + 2 + esp.tfclen, blksize);
 esp.plen = esp.clen - skb->len - esp.tfclen;
 esp.tailen = esp.tfclen + esp.plen + alen;

 if (!hw_offload || (hw_offload && !skb_is_gso(skb))) {
  esp.nfrags = esp6_output_head(x, skb, &esp);
  if (esp.nfrags < 0)
   return esp.nfrags;
 }

 seq = xo->seq.low;

 esph = ip_esp_hdr(skb);
 esph->spi = x->id.spi;

 skb_push(skb, -skb_network_offset(skb));

 if (xo->flags & XFRM_GSO_SEGMENT) {
  esph->seq_no = htonl(seq);

  if (!skb_is_gso(skb))
   xo->seq.low++;
  else
   xo->seq.low += skb_shinfo(skb)->gso_segs;
 }

 esp.seqno = cpu_to_be64(xo->seq.low + ((u64)xo->seq.hi << 32));

 len = skb->len - sizeof(struct ipv6hdr);
 if (len > IPV6_MAXPLEN)
  len = 0;

 ipv6_hdr(skb)->payload_len = htons(len);

 if (hw_offload)
  return 0;

 err = esp6_output_tail(x, skb, &esp);
 if (err)
  return err;

 secpath_reset(skb);

 return 0;
}
