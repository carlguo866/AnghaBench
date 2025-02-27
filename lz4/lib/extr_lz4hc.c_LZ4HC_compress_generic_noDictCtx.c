
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int limitedOutput_directive ;
struct TYPE_4__ {int * dictCtx; } ;
typedef TYPE_1__ LZ4HC_CCtx_internal ;


 int LZ4HC_compress_generic_internal (TYPE_1__* const,char const* const,char* const,int* const,int const,int,int ,int ) ;
 int assert (int ) ;
 int noDictCtx ;

__attribute__((used)) static int
LZ4HC_compress_generic_noDictCtx (
        LZ4HC_CCtx_internal* const ctx,
        const char* const src,
        char* const dst,
        int* const srcSizePtr,
        int const dstCapacity,
        int cLevel,
        limitedOutput_directive limit
        )
{
    assert(ctx->dictCtx == ((void*)0));
    return LZ4HC_compress_generic_internal(ctx, src, dst, srcSizePtr, dstCapacity, cLevel, limit, noDictCtx);
}
