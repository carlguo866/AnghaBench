
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int sha1_final (struct shash_desc*,int *) ;
 int sha1_generic_block_fn ;

int crypto_sha1_finup(struct shash_desc *desc, const u8 *data,
        unsigned int len, u8 *out)
{
 sha1_base_do_update(desc, data, len, sha1_generic_block_fn);
 return sha1_final(desc, out);
}
