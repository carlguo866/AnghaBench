
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pitch; scalar_t__ rotate_code; int gb; scalar_t__ frm0; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_get_le16u (int *) ;
 int bytestream2_tell (int *) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int old_codec1(SANMVideoContext *ctx, int top,
                      int left, int width, int height)
{
    uint8_t *dst = ((uint8_t *)ctx->frm0) + left + top * ctx->pitch;
    int i, j, len, flag, code, val, pos, end;

    for (i = 0; i < height; i++) {
        pos = 0;

        if (bytestream2_get_bytes_left(&ctx->gb) < 2)
            return AVERROR_INVALIDDATA;

        len = bytestream2_get_le16u(&ctx->gb);
        end = bytestream2_tell(&ctx->gb) + len;

        while (bytestream2_tell(&ctx->gb) < end) {
            if (bytestream2_get_bytes_left(&ctx->gb) < 2)
                return AVERROR_INVALIDDATA;

            code = bytestream2_get_byteu(&ctx->gb);
            flag = code & 1;
            code = (code >> 1) + 1;
            if (pos + code > width)
                return AVERROR_INVALIDDATA;
            if (flag) {
                val = bytestream2_get_byteu(&ctx->gb);
                if (val)
                    memset(dst + pos, val, code);
                pos += code;
            } else {
                if (bytestream2_get_bytes_left(&ctx->gb) < code)
                    return AVERROR_INVALIDDATA;
                for (j = 0; j < code; j++) {
                    val = bytestream2_get_byteu(&ctx->gb);
                    if (val)
                        dst[pos] = val;
                    pos++;
                }
            }
        }
        dst += ctx->pitch;
    }
    ctx->rotate_code = 0;

    return 0;
}
