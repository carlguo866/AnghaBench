
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int* buf; } ;
struct TYPE_6__ {int frame_size; int* crc_inv; int frame_size_min; scalar_t__ eac3; TYPE_2__ pb; } ;
typedef int AVCRC ;
typedef TYPE_1__ AC3EncodeContext ;


 int AV_CRC_16_ANSI ;
 int AV_WB16 (int*,int) ;
 int CRC16_POLY ;
 int av_assert2 (int) ;
 int av_bswap16 (int) ;
 int av_crc (int const*,int,int*,int) ;
 int * av_crc_get_table (int ) ;
 int flush_put_bits (TYPE_2__*) ;
 int memset (int*,int ,int) ;
 int mul_poly (int,int,int ) ;
 int put_bits_count (TYPE_2__*) ;
 int* put_bits_ptr (TYPE_2__*) ;

__attribute__((used)) static void output_frame_end(AC3EncodeContext *s)
{
    const AVCRC *crc_ctx = av_crc_get_table(AV_CRC_16_ANSI);
    int frame_size_58, pad_bytes, crc1, crc2_partial, crc2, crc_inv;
    uint8_t *frame;

    frame_size_58 = ((s->frame_size >> 2) + (s->frame_size >> 4)) << 1;


    av_assert2(s->frame_size * 8 - put_bits_count(&s->pb) >= 18);
    flush_put_bits(&s->pb);
    frame = s->pb.buf;
    pad_bytes = s->frame_size - (put_bits_ptr(&s->pb) - frame) - 2;
    av_assert2(pad_bytes >= 0);
    if (pad_bytes > 0)
        memset(put_bits_ptr(&s->pb), 0, pad_bytes);

    if (s->eac3) {

        crc2_partial = av_crc(crc_ctx, 0, frame + 2, s->frame_size - 5);
    } else {


    crc1 = av_bswap16(av_crc(crc_ctx, 0, frame + 4, frame_size_58 - 4));
    crc_inv = s->crc_inv[s->frame_size > s->frame_size_min];
    crc1 = mul_poly(crc_inv, crc1, CRC16_POLY);
    AV_WB16(frame + 2, crc1);


    crc2_partial = av_crc(crc_ctx, 0, frame + frame_size_58,
                          s->frame_size - frame_size_58 - 3);
    }
    crc2 = av_crc(crc_ctx, crc2_partial, frame + s->frame_size - 3, 1);

    if (crc2 == 0x770B) {
        frame[s->frame_size - 3] ^= 0x1;
        crc2 = av_crc(crc_ctx, crc2_partial, frame + s->frame_size - 3, 1);
    }
    crc2 = av_bswap16(crc2);
    AV_WB16(frame + s->frame_size - 2, crc2);
}
