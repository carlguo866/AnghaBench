
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int** data; int * linesize; } ;
struct TYPE_6__ {int generation; int h; int buf_row_idx; int* buf; int w; scalar_t__ scroll; } ;
typedef TYPE_1__ CellAutoContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;



__attribute__((used)) static void fill_picture(AVFilterContext *ctx, AVFrame *picref)
{
    CellAutoContext *s = ctx->priv;
    int i, j, k, row_idx = 0;
    uint8_t *p0 = picref->data[0];

    if (s->scroll && s->generation >= s->h)

        row_idx = (s->buf_row_idx + 1) % s->h;


    for (i = 0; i < s->h; i++) {
        uint8_t byte = 0;
        uint8_t *row = s->buf + row_idx*s->w;
        uint8_t *p = p0;
        for (k = 0, j = 0; j < s->w; j++) {
            byte |= row[j]<<(7-k++);
            if (k==8 || j == s->w-1) {
                k = 0;
                *p++ = byte;
                byte = 0;
            }
        }
        row_idx = (row_idx + 1) % s->h;
        p0 += picref->linesize[0];
    }
}
