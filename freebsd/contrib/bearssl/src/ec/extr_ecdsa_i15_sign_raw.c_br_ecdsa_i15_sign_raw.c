
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int br_hmac_drbg_context ;
struct TYPE_12__ {size_t desc; } ;
typedef TYPE_1__ br_hash_class ;
struct TYPE_13__ {int curve; int xlen; int x; } ;
typedef TYPE_2__ br_ec_private_key ;
struct TYPE_14__ {int supported_curves; size_t (* mulgen ) (unsigned char*,unsigned char*,size_t,int) ;} ;
typedef TYPE_3__ br_ec_impl ;
struct TYPE_15__ {size_t order_len; unsigned char* order; } ;
typedef TYPE_4__ br_ec_curve_def ;





 size_t BR_HASHDESC_OUT_MASK ;
 size_t BR_HASHDESC_OUT_OFF ;
 int I15_LEN ;
 int ORDER_LEN ;
 int POINT_LEN ;
 int br_ecdsa_i15_bits2int (int *,unsigned char*,size_t,int ) ;
 int br_hmac_drbg_generate (int *,unsigned char*,size_t) ;
 int br_hmac_drbg_init (int *,TYPE_1__ const*,unsigned char*,size_t) ;
 int br_i15_add (int *,int *,int) ;
 int br_i15_decode (int *,unsigned char*,size_t) ;
 int br_i15_decode_mod (int *,int ,int ,int *) ;
 int br_i15_encode (unsigned char*,size_t,int *) ;
 int br_i15_from_monty (int *,int *,int ) ;
 scalar_t__ br_i15_iszero (int *) ;
 int br_i15_modpow (int *,unsigned char*,size_t,int *,int ,int *,int *) ;
 int br_i15_montymul (int *,int *,int *,int *,int ) ;
 int br_i15_ninv15 (int ) ;
 int br_i15_sub (int *,int *,int) ;
 int br_i15_zero (int *,int ) ;
 TYPE_4__ br_secp256r1 ;
 TYPE_4__ br_secp384r1 ;
 TYPE_4__ br_secp521r1 ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 size_t stub1 (unsigned char*,unsigned char*,size_t,int) ;

size_t
br_ecdsa_i15_sign_raw(const br_ec_impl *impl,
 const br_hash_class *hf, const void *hash_value,
 const br_ec_private_key *sk, void *sig)
{







 const br_ec_curve_def *cd;
 uint16_t n[I15_LEN], r[I15_LEN], s[I15_LEN], x[I15_LEN];
 uint16_t m[I15_LEN], k[I15_LEN], t1[I15_LEN], t2[I15_LEN];
 unsigned char tt[ORDER_LEN << 1];
 unsigned char eU[POINT_LEN];
 size_t hash_len, nlen, ulen;
 uint16_t n0i;
 uint32_t ctl;
 br_hmac_drbg_context drbg;




 if (((impl->supported_curves >> sk->curve) & 1) == 0) {
  return 0;
 }




 switch (sk->curve) {
 case 130:
  cd = &br_secp256r1;
  break;
 case 129:
  cd = &br_secp384r1;
  break;
 case 128:
  cd = &br_secp521r1;
  break;
 default:
  return 0;
 }




 nlen = cd->order_len;
 br_i15_decode(n, cd->order, nlen);
 n0i = br_i15_ninv15(n[1]);






 if (!br_i15_decode_mod(x, sk->x, sk->xlen, n)) {
  return 0;
 }
 if (br_i15_iszero(x)) {
  return 0;
 }




 hash_len = (hf->desc >> BR_HASHDESC_OUT_OFF) & BR_HASHDESC_OUT_MASK;




 br_ecdsa_i15_bits2int(m, hash_value, hash_len, n[0]);
 br_i15_sub(m, n, br_i15_sub(m, n, 0) ^ 1);
 br_i15_encode(tt, nlen, x);
 br_i15_encode(tt + nlen, nlen, m);
 br_hmac_drbg_init(&drbg, hf, tt, nlen << 1);
 for (;;) {
  br_hmac_drbg_generate(&drbg, tt, nlen);
  br_ecdsa_i15_bits2int(k, tt, nlen, n[0]);
  if (br_i15_iszero(k)) {
   continue;
  }
  if (br_i15_sub(k, n, 0)) {
   break;
  }
 }







 br_i15_encode(tt, nlen, k);
 ulen = impl->mulgen(eU, tt, nlen, sk->curve);
 br_i15_zero(r, n[0]);
 br_i15_decode(r, &eU[1], ulen >> 1);
 r[0] = n[0];
 br_i15_sub(r, n, br_i15_sub(r, n, 0) ^ 1);






 br_i15_from_monty(k, n, n0i);
 br_i15_from_monty(k, n, n0i);
 memcpy(tt, cd->order, nlen);
 tt[nlen - 1] -= 2;
 br_i15_modpow(k, tt, nlen, n, n0i, t1, t2);
 br_i15_from_monty(m, n, n0i);
 br_i15_montymul(t1, x, r, n, n0i);
 ctl = br_i15_add(t1, m, 1);
 ctl |= br_i15_sub(t1, n, 0) ^ 1;
 br_i15_sub(t1, n, ctl);
 br_i15_montymul(s, t1, k, n, n0i);




 br_i15_encode(sig, nlen, r);
 br_i15_encode((unsigned char *)sig + nlen, nlen, s);
 return nlen << 1;
}
