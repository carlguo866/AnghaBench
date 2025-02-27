
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ix_sa_dir {unsigned char* npe_ctx; int npe_ctx_idx; int npe_ctx_phys; int npe_mode; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; } ;
struct ix_hash_algo {unsigned int cfgword; int icv; } ;
struct crypto_tfm {int dummy; } ;
typedef int cfgword ;


 int HMAC_IPAD_VALUE ;
 int HMAC_OPAD_VALUE ;
 int NPE_OP_HASH_ENABLE ;
 int NPE_OP_HASH_VERIFY ;
 int cpu_to_be32 (int) ;
 struct ixp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 struct ix_hash_algo* ix_hash (struct crypto_tfm*) ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 int register_chain_var (struct crypto_tfm*,int ,int,int,int,int const*,int) ;

__attribute__((used)) static int setup_auth(struct crypto_tfm *tfm, int encrypt, unsigned authsize,
  const u8 *key, int key_len, unsigned digest_len)
{
 u32 itarget, otarget, npe_ctx_addr;
 unsigned char *cinfo;
 int init_len, ret = 0;
 u32 cfgword;
 struct ix_sa_dir *dir;
 struct ixp_ctx *ctx = crypto_tfm_ctx(tfm);
 const struct ix_hash_algo *algo;

 dir = encrypt ? &ctx->encrypt : &ctx->decrypt;
 cinfo = dir->npe_ctx + dir->npe_ctx_idx;
 algo = ix_hash(tfm);


 cfgword = algo->cfgword | ( authsize << 6);

 cfgword ^= 0xAA000000;

 *(u32*)cinfo = cpu_to_be32(cfgword);
 cinfo += sizeof(cfgword);


 memcpy(cinfo, algo->icv, digest_len);
 cinfo += digest_len;

 itarget = dir->npe_ctx_phys + dir->npe_ctx_idx
    + sizeof(algo->cfgword);
 otarget = itarget + digest_len;
 init_len = cinfo - (dir->npe_ctx + dir->npe_ctx_idx);
 npe_ctx_addr = dir->npe_ctx_phys + dir->npe_ctx_idx;

 dir->npe_ctx_idx += init_len;
 dir->npe_mode |= NPE_OP_HASH_ENABLE;

 if (!encrypt)
  dir->npe_mode |= NPE_OP_HASH_VERIFY;

 ret = register_chain_var(tfm, HMAC_OPAD_VALUE, otarget,
   init_len, npe_ctx_addr, key, key_len);
 if (ret)
  return ret;
 return register_chain_var(tfm, HMAC_IPAD_VALUE, itarget,
   init_len, npe_ctx_addr, key, key_len);
}
