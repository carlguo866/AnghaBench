
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_10__ {TYPE_1__* p_picture; } ;
typedef TYPE_2__ subpicture_region_t ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_12__ {int i_height; int i_width; scalar_t__ second_field_offset; scalar_t__ i_image_offset; } ;
typedef TYPE_4__ decoder_sys_t ;
typedef int bs_t ;
struct TYPE_13__ {scalar_t__ i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_9__ {int Y_PITCH; scalar_t__* Y_PIXELS; } ;


 scalar_t__ __MIN (scalar_t__,int) ;
 int bs_align (int *) ;
 int bs_init (int *,scalar_t__,scalar_t__) ;
 scalar_t__ bs_read (int *,int) ;
 int memset (scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static void SVCDSubRenderImage( decoder_t *p_dec, block_t *p_data,
                subpicture_region_t *p_region )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t *p_dest = p_region->p_picture->Y_PIXELS;
    int i_field;
    int i_row, i_column;
    uint8_t i_color, i_count;
    bs_t bs;

    bs_init( &bs, p_data->p_buffer + p_sys->i_image_offset,
             p_data->i_buffer - p_sys->i_image_offset );

    for( i_field = 0; i_field < 2; i_field++ )
    {
        for( i_row = i_field; i_row < p_sys->i_height; i_row += 2 )
        {
            for( i_column = 0; i_column < p_sys->i_width; i_column++ )
            {
                i_color = bs_read( &bs, 2 );
                if( i_color == 0 && (i_count = bs_read( &bs, 2 )) )
                {
                    i_count = __MIN( i_count, p_sys->i_width - i_column );
                    memset( &p_dest[i_row * p_region->p_picture->Y_PITCH +
                                    i_column], 0, i_count + 1 );
                    i_column += i_count;
                    continue;
                }

                p_dest[i_row * p_region->p_picture->Y_PITCH + i_column] = i_color;
            }

            bs_align( &bs );
        }


        bs_init( &bs, p_data->p_buffer + p_sys->i_image_offset +
                 p_sys->second_field_offset,
                 p_data->i_buffer - p_sys->i_image_offset -
                 p_sys->second_field_offset );
    }
}
