
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ int16_t ;


 int ff_h264_idct_add_8_mmi (scalar_t__*,scalar_t__*,int) ;
 int ff_h264_idct_dc_add_8_mmi (scalar_t__*,scalar_t__*,int) ;
 size_t* scan8 ;

void ff_h264_idct_add16intra_8_mmi(uint8_t *dst, const int *block_offset,
        int16_t *block, int stride, const uint8_t nnzc[15*8])
{
    int i;
    for(i=0; i<16; i++){
        if(nnzc[ scan8[i] ])
            ff_h264_idct_add_8_mmi(dst + block_offset[i], block + i*16, stride);
        else if(((int16_t*)block)[i*16])
            ff_h264_idct_dc_add_8_mmi(dst + block_offset[i], block + i*16,
                    stride);
    }
}
