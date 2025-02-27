
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef unsigned int OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;
typedef void* OPJ_BYTE ;



__attribute__((used)) static void tif_32sto10u(const OPJ_INT32* pSrc, OPJ_BYTE* pDst,
                         OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < (length & ~(OPJ_SIZE_T)3U); i += 4U) {
        OPJ_UINT32 src0 = (OPJ_UINT32)pSrc[i + 0];
        OPJ_UINT32 src1 = (OPJ_UINT32)pSrc[i + 1];
        OPJ_UINT32 src2 = (OPJ_UINT32)pSrc[i + 2];
        OPJ_UINT32 src3 = (OPJ_UINT32)pSrc[i + 3];

        *pDst++ = (OPJ_BYTE)(src0 >> 2);
        *pDst++ = (OPJ_BYTE)(((src0 & 0x3U) << 6) | (src1 >> 4));
        *pDst++ = (OPJ_BYTE)(((src1 & 0xFU) << 4) | (src2 >> 6));
        *pDst++ = (OPJ_BYTE)(((src2 & 0x3FU) << 2) | (src3 >> 8));
        *pDst++ = (OPJ_BYTE)(src3);
    }

    if (length & 3U) {
        OPJ_UINT32 src0 = (OPJ_UINT32)pSrc[i + 0];
        OPJ_UINT32 src1 = 0U;
        OPJ_UINT32 src2 = 0U;
        length = length & 3U;

        if (length > 1U) {
            src1 = (OPJ_UINT32)pSrc[i + 1];
            if (length > 2U) {
                src2 = (OPJ_UINT32)pSrc[i + 2];
            }
        }
        *pDst++ = (OPJ_BYTE)(src0 >> 2);
        *pDst++ = (OPJ_BYTE)(((src0 & 0x3U) << 6) | (src1 >> 4));
        if (length > 1U) {
            *pDst++ = (OPJ_BYTE)(((src1 & 0xFU) << 4) | (src2 >> 6));
            if (length > 2U) {
                *pDst++ = (OPJ_BYTE)(((src2 & 0x3FU) << 2));
            }
        }
    }
}
