
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 size_t ZSTD_compressContinue_internal (int *,void*,size_t,void const*,size_t,int,int ) ;

size_t ZSTD_compressContinue(ZSTD_CCtx *cctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 return ZSTD_compressContinue_internal(cctx, dst, dstCapacity, src, srcSize, 1, 0);
}
