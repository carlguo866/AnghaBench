
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int text ;
struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int frame_count_in; int h; TYPE_4__* dst; } ;
struct TYPE_17__ {int linesize; int data; int height; int width; } ;
struct TYPE_16__ {int nb_values; int width; int height; int statistics; int nb_comps; int components; size_t* rgba_map; scalar_t__ oy; scalar_t__ ox; int white; int draw; scalar_t__ is_rgb; TYPE_14__* values; int (* draw_trace ) (TYPE_1__*,TYPE_2__*) ;int gray; scalar_t__ grid; int dark; int y2; int x2; int y1; int x1; } ;
struct TYPE_15__ {scalar_t__* p; } ;
typedef TYPE_1__ OscilloscopeContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int FFMAX (int,scalar_t__) ;
 int FFMIN (int,scalar_t__) ;
 int INT_MAX ;
 int av_popcount (int) ;
 int draw_scope (TYPE_1__*,int ,int ,int ,int ,TYPE_2__*,TYPE_14__*,int) ;
 int draw_text (int *,TYPE_2__*,int *,scalar_t__,scalar_t__,char*,int ) ;
 int ff_blend_rectangle (int *,int *,int ,int ,int ,int ,scalar_t__,scalar_t__,int,int) ;
 int ff_fill_rectangle (int *,int *,int ,int ,scalar_t__,scalar_t__,int,int) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int snprintf (char*,int,char*,char const,float,int,int) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int oscilloscope_filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    OscilloscopeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    float average[4] = { 0 };
    int max[4] = { 0 };
    int min[4] = { INT_MAX, INT_MAX, INT_MAX, INT_MAX };
    int i, c;

    s->nb_values = 0;
    draw_scope(s, s->x1, s->y1, s->x2, s->y2, frame, s->values, inlink->frame_count_in & 1);
    ff_blend_rectangle(&s->draw, &s->dark, frame->data, frame->linesize,
                       frame->width, frame->height,
                       s->ox, s->oy, s->width, s->height + 20 * s->statistics);

    if (s->grid && outlink->h >= 10) {
        ff_fill_rectangle(&s->draw, &s->gray, frame->data, frame->linesize,
                          s->ox, s->oy, s->width - 1, 1);

        for (i = 1; i < 5; i++) {
            ff_fill_rectangle(&s->draw, &s->gray, frame->data, frame->linesize,
                              s->ox, s->oy + i * (s->height - 1) / 4, s->width, 1);
        }

        for (i = 0; i < 10; i++) {
            ff_fill_rectangle(&s->draw, &s->gray, frame->data, frame->linesize,
                              s->ox + i * (s->width - 1) / 10, s->oy, 1, s->height);
        }

        ff_fill_rectangle(&s->draw, &s->gray, frame->data, frame->linesize,
                          s->ox + s->width - 1, s->oy, 1, s->height);
    }

    s->draw_trace(s, frame);

    for (i = 0; i < s->nb_values; i++) {
        for (c = 0; c < s->nb_comps; c++) {
            if ((1 << c) & s->components) {
                max[c] = FFMAX(max[c], s->values[i].p[s->rgba_map[c]]);
                min[c] = FFMIN(min[c], s->values[i].p[s->rgba_map[c]]);
                average[c] += s->values[i].p[s->rgba_map[c]];
            }
        }
    }
    for (c = 0; c < s->nb_comps; c++) {
        average[c] /= s->nb_values;
    }

    if (s->statistics && s->height > 10 && s->width > 280 * av_popcount(s->components)) {
        for (c = 0, i = 0; c < s->nb_comps; c++) {
            if ((1 << c) & s->components) {
                const char rgba[4] = { 'R', 'G', 'B', 'A' };
                const char yuva[4] = { 'Y', 'U', 'V', 'A' };
                char text[128];

                snprintf(text, sizeof(text), "%c avg:%.1f min:%d max:%d\n", s->is_rgb ? rgba[c] : yuva[c], average[c], min[c], max[c]);
                draw_text(&s->draw, frame, &s->white, s->ox + 2 + 280 * i++, s->oy + s->height + 4, text, 0);
            }
        }
    }

    return ff_filter_frame(outlink, frame);
}
