
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef unsigned int OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;
typedef int OPJ_BYTE ;



__attribute__((used)) static void convert_6u32s_C1R(const OPJ_BYTE* pSrc, OPJ_INT32* pDst,
                              OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < (length & ~(OPJ_SIZE_T)3U); i += 4U) {
        OPJ_UINT32 val0 = *pSrc++;
        OPJ_UINT32 val1 = *pSrc++;
        OPJ_UINT32 val2 = *pSrc++;
        pDst[i + 0] = (OPJ_INT32)(val0 >> 2);
        pDst[i + 1] = (OPJ_INT32)(((val0 & 0x3U) << 4) | (val1 >> 4));
        pDst[i + 2] = (OPJ_INT32)(((val1 & 0xFU) << 2) | (val2 >> 6));
        pDst[i + 3] = (OPJ_INT32)(val2 & 0x3FU);

    }
    if (length & 3U) {
        OPJ_UINT32 val0 = *pSrc++;
        length = length & 3U;
        pDst[i + 0] = (OPJ_INT32)(val0 >> 2);

        if (length > 1U) {
            OPJ_UINT32 val1 = *pSrc++;
            pDst[i + 1] = (OPJ_INT32)(((val0 & 0x3U) << 4) | (val1 >> 4));
            if (length > 2U) {
                OPJ_UINT32 val2 = *pSrc++;
                pDst[i + 2] = (OPJ_INT32)(((val1 & 0xFU) << 2) | (val2 >> 6));
            }
        }
    }
}
