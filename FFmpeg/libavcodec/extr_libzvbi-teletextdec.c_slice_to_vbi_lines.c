
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* subtitle_map; int last_pgno; int last_p5; TYPE_1__* sliced; } ;
typedef TYPE_2__ TeletextContext ;
struct TYPE_5__ {int* data; int line; int id; } ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 int MAX_SLICES ;
 int VBI_SLICED_TELETEXT_B ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 scalar_t__ ff_data_unit_id_is_teletext (int) ;
 int vbi_ham8 (int) ;
 int vbi_rev8 (int) ;
 int vbi_unham16p (int*) ;
 int vbi_unham8 (int) ;

__attribute__((used)) static int slice_to_vbi_lines(TeletextContext *ctx, uint8_t* buf, int size)
{
    int lines = 0;
    while (size >= 2 && lines < MAX_SLICES) {
        int data_unit_id = buf[0];
        int data_unit_length = buf[1];
        if (data_unit_length + 2 > size)
            return AVERROR_INVALIDDATA;
        if (ff_data_unit_id_is_teletext(data_unit_id)) {
            if (data_unit_length != 0x2c)
                return AVERROR_INVALIDDATA;
            else {
                int line_offset = buf[2] & 0x1f;
                int field_parity = buf[2] & 0x20;
                uint8_t *p = ctx->sliced[lines].data;
                int i, pmag;
                ctx->sliced[lines].id = VBI_SLICED_TELETEXT_B;
                ctx->sliced[lines].line = (line_offset > 0 ? (line_offset + (field_parity ? 0 : 313)) : 0);
                for (i = 0; i < 42; i++)
                    p[i] = vbi_rev8(buf[4 + i]);



                pmag = vbi_unham16p(p);
                if (pmag >= 0 && pmag >> 3 == 0) {
                    int page = vbi_unham16p(p + 2);
                    int flags1 = vbi_unham16p(p + 6);
                    int flags2 = vbi_unham16p(p + 8);
                    if (page >= 0 && flags1 >= 0 && flags2 >= 0) {
                        int pgno = ((pmag & 7) << 8) + page;

                        ctx->subtitle_map[pgno] = (!(flags1 & 0x40) && flags1 & 0x80 && flags2 & 0x01);

                        if (ctx->subtitle_map[pgno] && pgno == ctx->last_pgno) {
                            int last_byte9 = vbi_unham8(ctx->last_p5);
                            if (last_byte9 >= 0 && last_byte9 & 0x8) {
                                int byte9 = vbi_unham8(p[5]);
                                if (byte9 >= 0)
                                    p[5] = vbi_ham8(byte9 | 0x8);
                            }
                        }
                        ctx->last_pgno = pgno;
                        ctx->last_p5 = p[5];
                    }
                }
                lines++;
            }
        }
        size -= data_unit_length + 2;
        buf += data_unit_length + 2;
    }
    if (size)
        av_log(ctx, AV_LOG_WARNING, "%d bytes remained after slicing data\n", size);
    return lines;
}
