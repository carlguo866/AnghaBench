
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct cast6_ctx {int ** Kr; int ** Km; } ;
typedef int __be32 ;


 int Q (int *,int *,int *) ;
 int QBAR (int *,int *,int *) ;
 int be32_to_cpu (int const) ;
 int cpu_to_be32 (int ) ;
 struct cast6_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void cast6_decrypt(struct crypto_tfm *tfm, u8 *outbuf, const u8 *inbuf) {
 struct cast6_ctx * c = crypto_tfm_ctx(tfm);
 const __be32 *src = (const __be32 *)inbuf;
 __be32 *dst = (__be32 *)outbuf;
 u32 block[4];
 u32 * Km;
 u8 * Kr;

 block[0] = be32_to_cpu(src[0]);
 block[1] = be32_to_cpu(src[1]);
 block[2] = be32_to_cpu(src[2]);
 block[3] = be32_to_cpu(src[3]);

 Km = c->Km[11]; Kr = c->Kr[11]; Q (block, Kr, Km);
 Km = c->Km[10]; Kr = c->Kr[10]; Q (block, Kr, Km);
 Km = c->Km[9]; Kr = c->Kr[9]; Q (block, Kr, Km);
 Km = c->Km[8]; Kr = c->Kr[8]; Q (block, Kr, Km);
 Km = c->Km[7]; Kr = c->Kr[7]; Q (block, Kr, Km);
 Km = c->Km[6]; Kr = c->Kr[6]; Q (block, Kr, Km);
 Km = c->Km[5]; Kr = c->Kr[5]; QBAR (block, Kr, Km);
 Km = c->Km[4]; Kr = c->Kr[4]; QBAR (block, Kr, Km);
 Km = c->Km[3]; Kr = c->Kr[3]; QBAR (block, Kr, Km);
 Km = c->Km[2]; Kr = c->Kr[2]; QBAR (block, Kr, Km);
 Km = c->Km[1]; Kr = c->Kr[1]; QBAR (block, Kr, Km);
 Km = c->Km[0]; Kr = c->Kr[0]; QBAR (block, Kr, Km);

 dst[0] = cpu_to_be32(block[0]);
 dst[1] = cpu_to_be32(block[1]);
 dst[2] = cpu_to_be32(block[2]);
 dst[3] = cpu_to_be32(block[3]);
}
