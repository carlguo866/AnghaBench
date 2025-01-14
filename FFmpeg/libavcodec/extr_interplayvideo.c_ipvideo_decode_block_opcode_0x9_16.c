
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int stride; int stream_ptr; int line_inc; scalar_t__ pixel_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_get_le64 (int *) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x9_16(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t P[4];
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;


    for (x = 0; x < 4; x++)
        P[x] = bytestream2_get_le16(&s->stream_ptr);

    if (!(P[0] & 0x8000)) {
        if (!(P[2] & 0x8000)) {


            for (y = 0; y < 8; y++) {

                int flags = bytestream2_get_le16(&s->stream_ptr);
                for (x = 0; x < 8; x++, flags >>= 2)
                    *pixel_ptr++ = P[flags & 0x03];
                pixel_ptr += s->line_inc;
            }

        } else {
            uint32_t flags;


            flags = bytestream2_get_le32(&s->stream_ptr);

            for (y = 0; y < 8; y += 2) {
                for (x = 0; x < 8; x += 2, flags >>= 2) {
                    pixel_ptr[x ] =
                    pixel_ptr[x + 1 ] =
                    pixel_ptr[x + s->stride] =
                    pixel_ptr[x + 1 + s->stride] = P[flags & 0x03];
                }
                pixel_ptr += s->stride * 2;
            }

        }
    } else {
        uint64_t flags;


        flags = bytestream2_get_le64(&s->stream_ptr);
        if (!(P[2] & 0x8000)) {
            for (y = 0; y < 8; y++) {
                for (x = 0; x < 8; x += 2, flags >>= 2) {
                    pixel_ptr[x ] =
                    pixel_ptr[x + 1] = P[flags & 0x03];
                }
                pixel_ptr += s->stride;
            }
        } else {
            for (y = 0; y < 8; y += 2) {
                for (x = 0; x < 8; x++, flags >>= 2) {
                    pixel_ptr[x ] =
                    pixel_ptr[x + s->stride] = P[flags & 0x03];
                }
                pixel_ptr += s->stride * 2;
            }
        }
    }


    return 0;
}
