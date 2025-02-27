
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_13__ {TYPE_4__* p_b25; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int ssize_t ;
struct TYPE_15__ {int (* put ) (TYPE_4__*,TYPE_3__*) ;int (* get ) (TYPE_4__*,TYPE_3__*) ;} ;
struct TYPE_14__ {int member_1; scalar_t__ data; scalar_t__ size; int * member_0; } ;
typedef TYPE_3__ ARIB_STD_B25_BUFFER ;


 int GetErrorMessage (int,int ) ;
 int RemainAdd (TYPE_1__*,scalar_t__,scalar_t__) ;
 size_t RemainRead (TYPE_1__*,int *,size_t) ;
 int __MIN (size_t,size_t) ;
 int b25_errors ;
 int memcpy (int *,scalar_t__,int) ;
 int msg_Err (TYPE_1__*,char*,size_t,...) ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;
 int stub2 (TYPE_4__*,TYPE_3__*) ;
 int vlc_stream_Read (int ,int *,size_t) ;

__attribute__((used)) static ssize_t Read( stream_t *p_stream, void *p_buf, size_t i_toread )
{
    stream_sys_t *p_sys = p_stream->p_sys;
    uint8_t *p_dst = p_buf;
    int i_total_read = 0;
    int i_ret;

    if ( !i_toread )
        return -1;


    size_t i_fromremain = RemainRead( p_stream, p_dst, i_toread );
    i_total_read += i_fromremain;
    p_dst += i_fromremain;
    i_toread -= i_fromremain;

    while ( i_toread )
    {

        int i_srcread = vlc_stream_Read( p_stream->s, p_dst, i_toread );
        if ( i_srcread > 0 )
        {
            ARIB_STD_B25_BUFFER putbuf = { p_dst, i_srcread };
            i_ret = p_sys->p_b25->put( p_sys->p_b25, &putbuf );
            if ( i_ret < 0 )
            {
                msg_Err( p_stream, "decoder put failed: %s",
                         GetErrorMessage( i_ret, b25_errors ) );
                return 0;
            }
        }
        else
        {
            if ( i_srcread < 0 )
                msg_Err( p_stream, "Can't read %lu bytes from source stream: %d", i_toread, i_srcread );
            return 0;
        }

        ARIB_STD_B25_BUFFER getbuf;
        i_ret = p_sys->p_b25->get( p_sys->p_b25, &getbuf );
        if ( i_ret < 0 )
        {
            msg_Err( p_stream, "decoder get failed: %s",
                     GetErrorMessage( i_ret, b25_errors ) );
            return 0;
        }

        if ( (size_t)getbuf.size > i_toread )
        {

            RemainAdd( p_stream, getbuf.data + i_toread, getbuf.size - i_toread );
        }

        int consume = __MIN( (size_t)getbuf.size, i_toread );
        memcpy( p_dst, getbuf.data, consume );

        i_total_read += consume;
        p_dst += consume;
        i_toread -= consume;
    }

    return i_total_read;
}
