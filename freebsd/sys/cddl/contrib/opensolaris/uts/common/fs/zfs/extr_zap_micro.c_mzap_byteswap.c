
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mz_chunk; void* mz_normflags; void* mz_salt; void* mz_block_type; } ;
typedef TYPE_2__ mzap_phys_t ;
struct TYPE_4__ {int mze_cd; void* mze_value; } ;


 int BSWAP_32 (int ) ;
 void* BSWAP_64 (void*) ;
 size_t MZAP_ENT_LEN ;

__attribute__((used)) static void
mzap_byteswap(mzap_phys_t *buf, size_t size)
{
 buf->mz_block_type = BSWAP_64(buf->mz_block_type);
 buf->mz_salt = BSWAP_64(buf->mz_salt);
 buf->mz_normflags = BSWAP_64(buf->mz_normflags);
 int max = (size / MZAP_ENT_LEN) - 1;
 for (int i = 0; i < max; i++) {
  buf->mz_chunk[i].mze_value =
      BSWAP_64(buf->mz_chunk[i].mze_value);
  buf->mz_chunk[i].mze_cd =
      BSWAP_32(buf->mz_chunk[i].mze_cd);
 }
}
