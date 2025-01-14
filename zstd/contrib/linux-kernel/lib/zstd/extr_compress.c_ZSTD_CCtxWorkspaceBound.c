
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_stack ;
typedef int ZSTD_optimal_t ;
typedef int ZSTD_match_t ;
struct TYPE_3__ {size_t windowLog; int searchLength; scalar_t__ strategy; int chainLog; size_t hashLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int ZSTD_CCtx ;
typedef size_t U32 ;


 int Litbits ;
 size_t MIN (int ,size_t) ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 size_t ZSTD_ALIGN (size_t const) ;
 int ZSTD_BLOCKSIZE_ABSOLUTEMAX ;
 int ZSTD_HASHLOG3_MAX ;
 int ZSTD_OPT_NUM ;
 scalar_t__ ZSTD_btopt ;
 scalar_t__ ZSTD_btopt2 ;
 scalar_t__ ZSTD_fast ;

size_t ZSTD_CCtxWorkspaceBound(ZSTD_compressionParameters cParams)
{
 size_t const blockSize = MIN(ZSTD_BLOCKSIZE_ABSOLUTEMAX, (size_t)1 << cParams.windowLog);
 U32 const divider = (cParams.searchLength == 3) ? 3 : 4;
 size_t const maxNbSeq = blockSize / divider;
 size_t const tokenSpace = blockSize + 11 * maxNbSeq;
 size_t const chainSize = (cParams.strategy == ZSTD_fast) ? 0 : (1 << cParams.chainLog);
 size_t const hSize = ((size_t)1) << cParams.hashLog;
 U32 const hashLog3 = (cParams.searchLength > 3) ? 0 : MIN(ZSTD_HASHLOG3_MAX, cParams.windowLog);
 size_t const h3Size = ((size_t)1) << hashLog3;
 size_t const tableSpace = (chainSize + hSize + h3Size) * sizeof(U32);
 size_t const optSpace =
     ((MaxML + 1) + (MaxLL + 1) + (MaxOff + 1) + (1 << Litbits)) * sizeof(U32) + (ZSTD_OPT_NUM + 1) * (sizeof(ZSTD_match_t) + sizeof(ZSTD_optimal_t));
 size_t const workspaceSize = tableSpace + (256 * sizeof(U32)) + tokenSpace +
         (((cParams.strategy == ZSTD_btopt) || (cParams.strategy == ZSTD_btopt2)) ? optSpace : 0);

 return ZSTD_ALIGN(sizeof(ZSTD_stack)) + ZSTD_ALIGN(sizeof(ZSTD_CCtx)) + ZSTD_ALIGN(workspaceSize);
}
