
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tls_offload_context_tx {int aead_send; } ;
struct TYPE_3__ {int salt; } ;
struct TYPE_4__ {TYPE_1__ aes_gcm_128; } ;
struct tls_context {TYPE_2__ crypto_send; } ;
struct sk_buff {int len; struct sk_buff* prev; } ;
struct scatterlist {int dummy; } ;
typedef void aead_request ;
typedef int s32 ;


 int GFP_ATOMIC ;
 int TLS_AAD_SPACE_SIZE ;
 int TLS_CIPHER_AES_GCM_128_IV_SIZE ;
 int TLS_CIPHER_AES_GCM_128_SALT_SIZE ;
 int TLS_CIPHER_AES_GCM_128_TAG_SIZE ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int complete_skb (struct sk_buff*,struct sk_buff*,int) ;
 int fill_sg_out (struct scatterlist*,void*,struct tls_context*,struct sk_buff*,int,int,int,void*) ;
 int kfree (void*) ;
 int kfree_skb (struct sk_buff*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,int ,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_transport_offset (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 void* tls_alloc_aead_request (int ,int ) ;
 scalar_t__ tls_enc_records (void*,int ,struct scatterlist*,struct scatterlist*,void*,void*,int ,int) ;
 struct tls_offload_context_tx* tls_offload_ctx_tx (struct tls_context*) ;

__attribute__((used)) static struct sk_buff *tls_enc_skb(struct tls_context *tls_ctx,
       struct scatterlist sg_out[3],
       struct scatterlist *sg_in,
       struct sk_buff *skb,
       s32 sync_size, u64 rcd_sn)
{
 int tcp_payload_offset = skb_transport_offset(skb) + tcp_hdrlen(skb);
 struct tls_offload_context_tx *ctx = tls_offload_ctx_tx(tls_ctx);
 int payload_len = skb->len - tcp_payload_offset;
 void *buf, *iv, *aad, *dummy_buf;
 struct aead_request *aead_req;
 struct sk_buff *nskb = ((void*)0);
 int buf_len;

 aead_req = tls_alloc_aead_request(ctx->aead_send, GFP_ATOMIC);
 if (!aead_req)
  return ((void*)0);

 buf_len = TLS_CIPHER_AES_GCM_128_SALT_SIZE +
    TLS_CIPHER_AES_GCM_128_IV_SIZE +
    TLS_AAD_SPACE_SIZE +
    sync_size +
    TLS_CIPHER_AES_GCM_128_TAG_SIZE;
 buf = kmalloc(buf_len, GFP_ATOMIC);
 if (!buf)
  goto free_req;

 iv = buf;
 memcpy(iv, tls_ctx->crypto_send.aes_gcm_128.salt,
        TLS_CIPHER_AES_GCM_128_SALT_SIZE);
 aad = buf + TLS_CIPHER_AES_GCM_128_SALT_SIZE +
       TLS_CIPHER_AES_GCM_128_IV_SIZE;
 dummy_buf = aad + TLS_AAD_SPACE_SIZE;

 nskb = alloc_skb(skb_headroom(skb) + skb->len, GFP_ATOMIC);
 if (!nskb)
  goto free_buf;

 skb_reserve(nskb, skb_headroom(skb));

 fill_sg_out(sg_out, buf, tls_ctx, nskb, tcp_payload_offset,
      payload_len, sync_size, dummy_buf);

 if (tls_enc_records(aead_req, ctx->aead_send, sg_in, sg_out, aad, iv,
       rcd_sn, sync_size + payload_len) < 0)
  goto free_nskb;

 complete_skb(nskb, skb, tcp_payload_offset);




 nskb->prev = nskb;

free_buf:
 kfree(buf);
free_req:
 kfree(aead_req);
 return nskb;
free_nskb:
 kfree_skb(nskb);
 nskb = ((void*)0);
 goto free_buf;
}
