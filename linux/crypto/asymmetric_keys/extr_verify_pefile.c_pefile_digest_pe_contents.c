
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct shash_desc {int dummy; } ;
struct pefile_context {unsigned int image_checksum_offset; unsigned int cert_dirent_offset; unsigned int header_size; unsigned int n_sections; unsigned int certs_size; TYPE_1__* secs; } ;
struct data_dirent {int dummy; } ;
typedef int canon ;
struct TYPE_3__ {scalar_t__ raw_data_size; int data_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int crypto_shash_update (struct shash_desc*,void const*,unsigned int) ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 int kfree (unsigned int*) ;
 int memmove (unsigned int*,unsigned int*,unsigned int) ;
 scalar_t__ pefile_compare_shdrs (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int pefile_digest_pe_contents(const void *pebuf, unsigned int pelen,
         struct pefile_context *ctx,
         struct shash_desc *desc)
{
 unsigned *canon, tmp, loop, i, hashed_bytes;
 int ret;




 ret = crypto_shash_update(desc, pebuf, ctx->image_checksum_offset);
 if (ret < 0)
  return ret;

 tmp = ctx->image_checksum_offset + sizeof(uint32_t);
 ret = crypto_shash_update(desc, pebuf + tmp,
      ctx->cert_dirent_offset - tmp);
 if (ret < 0)
  return ret;

 tmp = ctx->cert_dirent_offset + sizeof(struct data_dirent);
 ret = crypto_shash_update(desc, pebuf + tmp, ctx->header_size - tmp);
 if (ret < 0)
  return ret;

 canon = kcalloc(ctx->n_sections, sizeof(unsigned), GFP_KERNEL);
 if (!canon)
  return -ENOMEM;




 canon[0] = 0;
 for (loop = 1; loop < ctx->n_sections; loop++) {
  for (i = 0; i < loop; i++) {
   if (pefile_compare_shdrs(&ctx->secs[canon[i]],
       &ctx->secs[loop]) > 0) {
    memmove(&canon[i + 1], &canon[i],
     (loop - i) * sizeof(canon[0]));
    break;
   }
  }
  canon[i] = loop;
 }

 hashed_bytes = ctx->header_size;
 for (loop = 0; loop < ctx->n_sections; loop++) {
  i = canon[loop];
  if (ctx->secs[i].raw_data_size == 0)
   continue;
  ret = crypto_shash_update(desc,
       pebuf + ctx->secs[i].data_addr,
       ctx->secs[i].raw_data_size);
  if (ret < 0) {
   kfree(canon);
   return ret;
  }
  hashed_bytes += ctx->secs[i].raw_data_size;
 }
 kfree(canon);

 if (pelen > hashed_bytes) {
  tmp = hashed_bytes + ctx->certs_size;
  ret = crypto_shash_update(desc,
       pebuf + hashed_bytes,
       pelen - tmp);
  if (ret < 0)
   return ret;
 }

 return 0;
}
