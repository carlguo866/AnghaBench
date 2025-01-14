
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_7__ {int i_buffer; int i_length; scalar_t__ i_dts; int * p_buffer; int i_pts; } ;
typedef TYPE_1__ block_t ;


 int SetWBE (int *,int) ;
 int VLC_SUCCESS ;
 int __MIN (int,int) ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,int ) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;

__attribute__((used)) static int rtp_packetize_mpa( sout_stream_id_sys_t *id, block_t *in )
{
    int i_max = rtp_mtu (id) - 4;
    int i_count = ( in->i_buffer + i_max - 1 ) / i_max;

    uint8_t *p_data = in->p_buffer;
    int i_data = in->i_buffer;
    int i;

    for( i = 0; i < i_count; i++ )
    {
        int i_payload = __MIN( i_max, i_data );
        block_t *out = block_Alloc( 16 + i_payload );


        rtp_packetize_common( id, out, (i == i_count - 1)?1:0, in->i_pts );

        SetWBE( out->p_buffer + 12, 0 );

        SetWBE( out->p_buffer + 14, i * i_max );
        memcpy( &out->p_buffer[16], p_data, i_payload );

        out->i_dts = in->i_dts + i * in->i_length / i_count;
        out->i_length = in->i_length / i_count;

        rtp_packetize_send( id, out );

        p_data += i_payload;
        i_data -= i_payload;
    }

    block_Release(in);
    return VLC_SUCCESS;
}
