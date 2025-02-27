
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_3__ {scalar_t__ (* memconfig ) (int ,scalar_t__*,scalar_t__*,scalar_t__) ;int coder; } ;
struct TYPE_4__ {scalar_t__ memlimit; TYPE_1__ next; } ;
typedef TYPE_2__ lzma_auto_coder ;


 scalar_t__ LZMA_MEMLIMIT_ERROR ;
 scalar_t__ LZMA_MEMUSAGE_BASE ;
 scalar_t__ LZMA_OK ;
 int assert (int) ;
 scalar_t__ stub1 (int ,scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static lzma_ret
auto_decoder_memconfig(void *coder_ptr, uint64_t *memusage,
  uint64_t *old_memlimit, uint64_t new_memlimit)
{
 lzma_auto_coder *coder = coder_ptr;

 lzma_ret ret;

 if (coder->next.memconfig != ((void*)0)) {
  ret = coder->next.memconfig(coder->next.coder,
    memusage, old_memlimit, new_memlimit);
  assert(*old_memlimit == coder->memlimit);
 } else {


  *memusage = LZMA_MEMUSAGE_BASE;
  *old_memlimit = coder->memlimit;

  ret = LZMA_OK;
  if (new_memlimit != 0 && new_memlimit < *memusage)
   ret = LZMA_MEMLIMIT_ERROR;
 }

 if (ret == LZMA_OK && new_memlimit != 0)
  coder->memlimit = new_memlimit;

 return ret;
}
