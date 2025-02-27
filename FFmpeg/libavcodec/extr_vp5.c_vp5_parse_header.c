
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VP56RangeCoder ;
struct TYPE_9__ {int macroblocks; TYPE_5__* avctx; TYPE_1__** frames; int c; } ;
typedef TYPE_2__ VP56Context ;
struct TYPE_10__ {int coded_width; int coded_height; } ;
struct TYPE_8__ {int key_frame; } ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 size_t VP56_FRAME_CURRENT ;
 int VP56_SIZE_CHANGE ;
 int av_log (TYPE_5__*,int ,char*,int,int) ;
 int avpriv_report_missing_feature (TYPE_5__*,char*) ;
 int ff_set_dimensions (TYPE_5__*,int,int) ;
 int ff_vp56_init_dequant (TYPE_2__*,int) ;
 int ff_vp56_init_range_decoder (int *,int const*,int) ;
 scalar_t__ vp56_rac_get (int *) ;
 int vp56_rac_gets (int *,int) ;

__attribute__((used)) static int vp5_parse_header(VP56Context *s, const uint8_t *buf, int buf_size)
{
    VP56RangeCoder *c = &s->c;
    int rows, cols;
    int ret;

    ret = ff_vp56_init_range_decoder(&s->c, buf, buf_size);
    if (ret < 0)
        return ret;
    s->frames[VP56_FRAME_CURRENT]->key_frame = !vp56_rac_get(c);
    vp56_rac_get(c);
    ff_vp56_init_dequant(s, vp56_rac_gets(c, 6));
    if (s->frames[VP56_FRAME_CURRENT]->key_frame)
    {
        int render_x, render_y;

        vp56_rac_gets(c, 8);
        if(vp56_rac_gets(c, 5) > 5)
            return AVERROR_INVALIDDATA;
        vp56_rac_gets(c, 2);
        if (vp56_rac_get(c)) {
            avpriv_report_missing_feature(s->avctx, "Interlacing");
            return AVERROR_PATCHWELCOME;
        }
        rows = vp56_rac_gets(c, 8);
        cols = vp56_rac_gets(c, 8);
        if (!rows || !cols) {
            av_log(s->avctx, AV_LOG_ERROR, "Invalid size %dx%d\n",
                   cols << 4, rows << 4);
            return AVERROR_INVALIDDATA;
        }
        render_y = vp56_rac_gets(c, 8);
        render_x = vp56_rac_gets(c, 8);
        if (render_x == 0 || render_x > cols ||
            render_y == 0 || render_y > rows)
            return AVERROR_INVALIDDATA;
        vp56_rac_gets(c, 2);
        if (!s->macroblocks ||
            16*cols != s->avctx->coded_width ||
            16*rows != s->avctx->coded_height) {
            int ret = ff_set_dimensions(s->avctx, 16 * cols, 16 * rows);
            if (ret < 0)
                return ret;
            return VP56_SIZE_CHANGE;
        }
    } else if (!s->macroblocks)
        return AVERROR_INVALIDDATA;
    return 0;
}
