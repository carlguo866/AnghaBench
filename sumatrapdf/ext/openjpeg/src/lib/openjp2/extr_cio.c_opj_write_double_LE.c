
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef int OPJ_FLOAT64 ;
typedef int OPJ_BYTE ;



void opj_write_double_LE(OPJ_BYTE * p_buffer, OPJ_FLOAT64 p_value)
{
    const OPJ_BYTE * l_data_ptr = ((const OPJ_BYTE *) &p_value) + sizeof(
                                      OPJ_FLOAT64) - 1;
    OPJ_UINT32 i;
    for (i = 0; i < sizeof(OPJ_FLOAT64); ++i) {
        *(p_buffer++) = *(l_data_ptr--);
    }
}
