
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_3__ {int stride; int stream_ptr; int line_inc; scalar_t__ pixel_ptr; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_get_le64 (int *) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0xA_16(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t P[8];
    int flags = 0;
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;

    for (x = 0; x < 4; x++)
        P[x] = bytestream2_get_le16(&s->stream_ptr);



    if (!(P[0] & 0x8000)) {


        for (y = 0; y < 16; y++) {

            if (!(y & 3)) {
                if (y)
                    for (x = 0; x < 4; x++)
                        P[x] = bytestream2_get_le16(&s->stream_ptr);
                flags = bytestream2_get_le32(&s->stream_ptr);
            }

            for (x = 0; x < 4; x++, flags >>= 2)
                *pixel_ptr++ = P[flags & 0x03];

            pixel_ptr += s->stride - 4;

            if (y == 7) pixel_ptr -= 8 * s->stride - 4;
        }

    } else {

        int vert;
        uint64_t flags = bytestream2_get_le64(&s->stream_ptr);

        for (x = 4; x < 8; x++)
            P[x] = bytestream2_get_le16(&s->stream_ptr);
        vert = !(P[4] & 0x8000);




        for (y = 0; y < 16; y++) {
            for (x = 0; x < 4; x++, flags >>= 2)
                *pixel_ptr++ = P[flags & 0x03];

            if (vert) {
                pixel_ptr += s->stride - 4;

                if (y == 7) pixel_ptr -= 8 * s->stride - 4;
            } else if (y & 1) pixel_ptr += s->line_inc;


            if (y == 7) {
                memcpy(P, P + 4, 8);
                flags = bytestream2_get_le64(&s->stream_ptr);
            }
        }
    }


    return 0;
}
