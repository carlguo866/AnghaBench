
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
typedef int sout_stream_t ;
struct TYPE_7__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef TYPE_2__ block_t ;


 int AccessOutGrabberWriteBuffer (int *,TYPE_2__*) ;
 int VLC_SUCCESS ;
 int block_Release (TYPE_2__*) ;

__attribute__((used)) static ssize_t AccessOutGrabberWrite( sout_access_out_t *p_access,
                                      block_t *p_buffer )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_access->p_sys;

    while( p_buffer )
    {
        block_t *p_next;

        AccessOutGrabberWriteBuffer( p_stream, p_buffer );

        p_next = p_buffer->p_next;
        block_Release( p_buffer );
        p_buffer = p_next;
    }

    return VLC_SUCCESS;
}
