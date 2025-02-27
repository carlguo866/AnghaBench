
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int SHA224_DIGEST_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int memcpy (int *,int *,int ) ;
 int memzero_explicit (int *,int) ;
 int sha256_sparc64_final (struct shash_desc*,int *) ;

__attribute__((used)) static int sha224_sparc64_final(struct shash_desc *desc, u8 *hash)
{
 u8 D[SHA256_DIGEST_SIZE];

 sha256_sparc64_final(desc, D);

 memcpy(hash, D, SHA224_DIGEST_SIZE);
 memzero_explicit(D, SHA256_DIGEST_SIZE);

 return 0;
}
