
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rows_minus_one; int columns_minus_one; void* output_height; void* output_width; } ;
union heif_derivation_data {TYPE_1__ ImageGrid; } ;
typedef int uint8_t ;


 void* GetDWBE (int const*) ;
 void* GetWBE (int const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int ReadDerivationData_Grid( const uint8_t *p_data, size_t i_data,
                                    union heif_derivation_data *d )
{
    if( i_data < 8 || p_data[0] != 0x00 )
        return VLC_EGENERIC;

    uint8_t i_fieldlength = ((p_data[1] & 0x01) + 1) << 1;

    d->ImageGrid.rows_minus_one = p_data[2];
    d->ImageGrid.columns_minus_one = p_data[3];
    if(i_fieldlength == 2)
    {
        d->ImageGrid.output_width = GetWBE(&p_data[4]);
        d->ImageGrid.output_height = GetWBE(&p_data[6]);
    }
    else
    {
        if(i_data < 12)
            return VLC_EGENERIC;
        d->ImageGrid.output_width = GetDWBE(&p_data[4]);
        d->ImageGrid.output_height = GetDWBE(&p_data[8]);
    }
    return VLC_SUCCESS;
}
