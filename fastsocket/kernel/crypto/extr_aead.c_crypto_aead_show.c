
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct aead_alg {char* ivsize; char* maxauthsize; scalar_t__ geniv; } ;
struct crypto_alg {int cra_flags; char* cra_blocksize; struct aead_alg cra_aead; } ;


 int CRYPTO_ALG_ASYNC ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_aead_show(struct seq_file *m, struct crypto_alg *alg)
{
 struct aead_alg *aead = &alg->cra_aead;

 seq_printf(m, "type         : aead\n");
 seq_printf(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
          "yes" : "no");
 seq_printf(m, "blocksize    : %u\n", alg->cra_blocksize);
 seq_printf(m, "ivsize       : %u\n", aead->ivsize);
 seq_printf(m, "maxauthsize  : %u\n", aead->maxauthsize);
 seq_printf(m, "geniv        : %s\n", aead->geniv ?: "<built-in>");
}
