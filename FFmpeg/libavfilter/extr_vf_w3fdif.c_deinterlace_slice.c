
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_7__ {int (* filter_scale ) (int *,int *,int const,int const) ;int (* filter_complex_high ) (int *,int **,int **,int ,int const) ;int (* filter_simple_high ) (int *,int **,int **,int ,int const) ;int (* filter_complex_low ) (int *,int **,int ,int const) ;int (* filter_simple_low ) (int *,int **,int ,int const) ;} ;
struct TYPE_8__ {int filter; int* linesize; int* planeheight; int max; scalar_t__ field; TYPE_1__ dsp; int ** work_line; } ;
typedef TYPE_2__ W3FDIFContext ;
struct TYPE_9__ {int plane; TYPE_4__* adj; TYPE_4__* cur; TYPE_4__* out; } ;
typedef TYPE_3__ ThreadData ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int* linesize; scalar_t__ top_field_first; int ** data; } ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterContext ;


 int * coef_hf ;
 int * coef_lf ;
 int memcpy (int *,int *,int const) ;
 int* n_coef_hf ;
 int* n_coef_lf ;
 int stub1 (int *,int **,int ,int const) ;
 int stub2 (int *,int **,int ,int const) ;
 int stub3 (int *,int **,int **,int ,int const) ;
 int stub4 (int *,int **,int **,int ,int const) ;
 int stub5 (int *,int *,int const,int const) ;

__attribute__((used)) static int deinterlace_slice(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    W3FDIFContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *out = td->out;
    AVFrame *cur = td->cur;
    AVFrame *adj = td->adj;
    const int plane = td->plane;
    const int filter = s->filter;
    uint8_t *in_line, *in_lines_cur[5], *in_lines_adj[5];
    uint8_t *out_line, *out_pixel;
    int32_t *work_line, *work_pixel;
    uint8_t *cur_data = cur->data[plane];
    uint8_t *adj_data = adj->data[plane];
    uint8_t *dst_data = out->data[plane];
    const int linesize = s->linesize[plane];
    const int height = s->planeheight[plane];
    const int cur_line_stride = cur->linesize[plane];
    const int adj_line_stride = adj->linesize[plane];
    const int dst_line_stride = out->linesize[plane];
    const int start = (height * jobnr) / nb_jobs;
    const int end = (height * (jobnr+1)) / nb_jobs;
    const int max = s->max;
    int j, y_in, y_out;


    y_out = start + ((s->field == cur->top_field_first) ^ (start & 1));

    in_line = cur_data + (y_out * cur_line_stride);
    out_line = dst_data + (y_out * dst_line_stride);

    while (y_out < end) {
        memcpy(out_line, in_line, linesize);
        y_out += 2;
        in_line += cur_line_stride * 2;
        out_line += dst_line_stride * 2;
    }


    y_out = start + ((s->field != cur->top_field_first) ^ (start & 1));

    out_line = dst_data + (y_out * dst_line_stride);

    while (y_out < end) {

        for (j = 0; j < n_coef_lf[filter]; j++) {
            y_in = (y_out + 1) + (j * 2) - n_coef_lf[filter];

            while (y_in < 0)
                y_in += 2;
            while (y_in >= height)
                y_in -= 2;

            in_lines_cur[j] = cur_data + (y_in * cur_line_stride);
        }

        work_line = s->work_line[jobnr];
        switch (n_coef_lf[filter]) {
        case 2:
            s->dsp.filter_simple_low(work_line, in_lines_cur,
                                     coef_lf[filter], linesize);
            break;
        case 4:
            s->dsp.filter_complex_low(work_line, in_lines_cur,
                                      coef_lf[filter], linesize);
        }


        for (j = 0; j < n_coef_hf[filter]; j++) {
            y_in = (y_out + 1) + (j * 2) - n_coef_hf[filter];

            while (y_in < 0)
                y_in += 2;
            while (y_in >= height)
                y_in -= 2;

            in_lines_cur[j] = cur_data + (y_in * cur_line_stride);
            in_lines_adj[j] = adj_data + (y_in * adj_line_stride);
        }

        work_line = s->work_line[jobnr];
        switch (n_coef_hf[filter]) {
        case 3:
            s->dsp.filter_simple_high(work_line, in_lines_cur, in_lines_adj,
                                      coef_hf[filter], linesize);
            break;
        case 5:
            s->dsp.filter_complex_high(work_line, in_lines_cur, in_lines_adj,
                                       coef_hf[filter], linesize);
        }


        work_pixel = s->work_line[jobnr];
        out_pixel = out_line;

        s->dsp.filter_scale(out_pixel, work_pixel, linesize, max);


        y_out += 2;
        out_line += dst_line_stride * 2;
    }

    return 0;
}
