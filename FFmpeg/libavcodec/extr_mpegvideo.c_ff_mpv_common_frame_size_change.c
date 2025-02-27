
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int i ;
struct TYPE_14__ {int slice_context_count; scalar_t__ codec_id; int mb_height; int height; int start_mb_y; int end_mb_y; struct TYPE_14__** thread_context; scalar_t__ width; int avctx; int progressive_sequence; int * current_picture_ptr; int next_picture_ptr; int last_picture_ptr; TYPE_1__* picture; int context_initialized; } ;
struct TYPE_13__ {int needs_realloc; } ;
typedef TYPE_2__ MpegEncContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 int EINVAL ;
 int ENOMEM ;
 int MAX_PICTURE_COUNT ;
 int av_freep (TYPE_2__**) ;
 int av_image_check_size (scalar_t__,int,int ,int ) ;
 TYPE_2__* av_memdup (TYPE_2__*,int) ;
 int ff_mpv_common_end (TYPE_2__*) ;
 int free_context_frame (TYPE_2__*) ;
 int free_duplicate_context (TYPE_2__*) ;
 int init_context_frame (TYPE_2__*) ;
 int init_duplicate_context (TYPE_2__*) ;
 int memset (TYPE_2__**,int ,int) ;

int ff_mpv_common_frame_size_change(MpegEncContext *s)
{
    int i, err = 0;

    if (!s->context_initialized)
        return AVERROR(EINVAL);

    if (s->slice_context_count > 1) {
        for (i = 0; i < s->slice_context_count; i++) {
            free_duplicate_context(s->thread_context[i]);
        }
        for (i = 1; i < s->slice_context_count; i++) {
            av_freep(&s->thread_context[i]);
        }
    } else
        free_duplicate_context(s);

    free_context_frame(s);

    if (s->picture)
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
                s->picture[i].needs_realloc = 1;
        }

    s->last_picture_ptr =
    s->next_picture_ptr =
    s->current_picture_ptr = ((void*)0);


    if (s->codec_id == AV_CODEC_ID_MPEG2VIDEO && !s->progressive_sequence)
        s->mb_height = (s->height + 31) / 32 * 2;
    else
        s->mb_height = (s->height + 15) / 16;

    if ((s->width || s->height) &&
        (err = av_image_check_size(s->width, s->height, 0, s->avctx)) < 0)
        goto fail;

    if ((err = init_context_frame(s)))
        goto fail;

    memset(s->thread_context, 0, sizeof(s->thread_context));
    s->thread_context[0] = s;

    if (s->width && s->height) {
        int nb_slices = s->slice_context_count;
        if (nb_slices > 1) {
            for (i = 0; i < nb_slices; i++) {
                if (i) {
                    s->thread_context[i] = av_memdup(s, sizeof(MpegEncContext));
                    if (!s->thread_context[i]) {
                        err = AVERROR(ENOMEM);
                        goto fail;
                    }
                }
                if ((err = init_duplicate_context(s->thread_context[i])) < 0)
                    goto fail;
                s->thread_context[i]->start_mb_y =
                    (s->mb_height * (i) + nb_slices / 2) / nb_slices;
                s->thread_context[i]->end_mb_y =
                    (s->mb_height * (i + 1) + nb_slices / 2) / nb_slices;
            }
        } else {
            err = init_duplicate_context(s);
            if (err < 0)
                goto fail;
            s->start_mb_y = 0;
            s->end_mb_y = s->mb_height;
        }
        s->slice_context_count = nb_slices;
    }

    return 0;
 fail:
    ff_mpv_common_end(s);
    return err;
}
