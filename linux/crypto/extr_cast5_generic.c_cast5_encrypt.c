
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int __cast5_encrypt (int ,int *,int const*) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void cast5_encrypt(struct crypto_tfm *tfm, u8 *outbuf, const u8 *inbuf)
{
 __cast5_encrypt(crypto_tfm_ctx(tfm), outbuf, inbuf);
}
