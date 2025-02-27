
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int stride; int stream_ptr; scalar_t__ pixel_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_le16 (int *) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xC_16(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;


    for (y = 0; y < 8; y += 2) {
        for (x = 0; x < 8; x += 2) {
            pixel_ptr[x ] =
            pixel_ptr[x + 1 ] =
            pixel_ptr[x + s->stride] =
            pixel_ptr[x + 1 + s->stride] = bytestream2_get_le16(&s->stream_ptr);
        }
        pixel_ptr += s->stride * 2;
    }


    return 0;
}
