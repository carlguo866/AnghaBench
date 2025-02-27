
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int lzma_outq ;
typedef int lzma_outbuf ;


 scalar_t__ LZMA_OK ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ get_options (scalar_t__*,int*,scalar_t__,int) ;

extern uint64_t
lzma_outq_memusage(uint64_t buf_size_max, uint32_t threads)
{
 uint64_t bufs_alloc_size;
 uint32_t bufs_count;

 if (get_options(&bufs_alloc_size, &bufs_count, buf_size_max, threads)
   != LZMA_OK)
  return UINT64_MAX;

 return sizeof(lzma_outq) + bufs_count * sizeof(lzma_outbuf)
   + bufs_alloc_size;
}
