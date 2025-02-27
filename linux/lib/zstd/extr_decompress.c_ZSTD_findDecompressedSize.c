
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef void BYTE ;


 unsigned long long ERROR (int ) ;
 unsigned long long ZSTD_CONTENTSIZE_ERROR ;
 int const ZSTD_MAGIC_SKIPPABLE_START ;
 size_t ZSTD_findFrameCompressedSize (void const*,size_t) ;
 size_t ZSTD_frameHeaderSize_prefix ;
 unsigned long long ZSTD_getFrameContentSize (void const*,size_t) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_readLE32 (void const*) ;
 size_t ZSTD_skippableHeaderSize ;
 int srcSize_wrong ;

unsigned long long ZSTD_findDecompressedSize(const void *src, size_t srcSize)
{
 {
  unsigned long long totalDstSize = 0;
  while (srcSize >= ZSTD_frameHeaderSize_prefix) {
   const U32 magicNumber = ZSTD_readLE32(src);

   if ((magicNumber & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
    size_t skippableSize;
    if (srcSize < ZSTD_skippableHeaderSize)
     return ERROR(srcSize_wrong);
    skippableSize = ZSTD_readLE32((const BYTE *)src + 4) + ZSTD_skippableHeaderSize;
    if (srcSize < skippableSize) {
     return ZSTD_CONTENTSIZE_ERROR;
    }

    src = (const BYTE *)src + skippableSize;
    srcSize -= skippableSize;
    continue;
   }

   {
    unsigned long long const ret = ZSTD_getFrameContentSize(src, srcSize);
    if (ret >= ZSTD_CONTENTSIZE_ERROR)
     return ret;


    if (totalDstSize + ret < totalDstSize)
     return ZSTD_CONTENTSIZE_ERROR;
    totalDstSize += ret;
   }
   {
    size_t const frameSrcSize = ZSTD_findFrameCompressedSize(src, srcSize);
    if (ZSTD_isError(frameSrcSize)) {
     return ZSTD_CONTENTSIZE_ERROR;
    }

    src = (const BYTE *)src + frameSrcSize;
    srcSize -= frameSrcSize;
   }
  }

  if (srcSize) {
   return ZSTD_CONTENTSIZE_ERROR;
  }

  return totalDstSize;
 }
}
