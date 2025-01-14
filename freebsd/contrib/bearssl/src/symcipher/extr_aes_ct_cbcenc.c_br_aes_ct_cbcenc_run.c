
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_rounds; int skey; } ;
typedef TYPE_1__ br_aes_ct_cbcenc_keys ;


 int br_aes_ct_bitslice_encrypt (int ,int*,int*) ;
 int br_aes_ct_ortho (int*) ;
 int br_aes_ct_skey_expand (int*,int ,int ) ;
 int br_dec32le (unsigned char*) ;
 int br_enc32le (unsigned char*,int) ;

void
br_aes_ct_cbcenc_run(const br_aes_ct_cbcenc_keys *ctx,
 void *iv, void *data, size_t len)
{
 unsigned char *buf, *ivbuf;
 uint32_t q[8];
 uint32_t iv0, iv1, iv2, iv3;
 uint32_t sk_exp[120];

 q[1] = 0;
 q[3] = 0;
 q[5] = 0;
 q[7] = 0;
 br_aes_ct_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);
 ivbuf = iv;
 iv0 = br_dec32le(ivbuf);
 iv1 = br_dec32le(ivbuf + 4);
 iv2 = br_dec32le(ivbuf + 8);
 iv3 = br_dec32le(ivbuf + 12);
 buf = data;
 while (len > 0) {
  q[0] = iv0 ^ br_dec32le(buf);
  q[2] = iv1 ^ br_dec32le(buf + 4);
  q[4] = iv2 ^ br_dec32le(buf + 8);
  q[6] = iv3 ^ br_dec32le(buf + 12);
  br_aes_ct_ortho(q);
  br_aes_ct_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
  br_aes_ct_ortho(q);
  iv0 = q[0];
  iv1 = q[2];
  iv2 = q[4];
  iv3 = q[6];
  br_enc32le(buf, iv0);
  br_enc32le(buf + 4, iv1);
  br_enc32le(buf + 8, iv2);
  br_enc32le(buf + 12, iv3);
  buf += 16;
  len -= 16;
 }
 br_enc32le(ivbuf, iv0);
 br_enc32le(ivbuf + 4, iv1);
 br_enc32le(ivbuf + 8, iv2);
 br_enc32le(ivbuf + 12, iv3);
}
