
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int atomic_int ;
struct TYPE_19__ {TYPE_12__* progress; int f; TYPE_6__** owner; } ;
typedef TYPE_4__ ThreadFrame ;
struct TYPE_21__ {int active_thread_type; TYPE_2__* codec; TYPE_1__* internal; } ;
struct TYPE_20__ {int requested_flags; int result; TYPE_3__* parent; int progress_mutex; int progress_cond; int state; int requested_frame; } ;
struct TYPE_18__ {int buffer_mutex; } ;
struct TYPE_17__ {scalar_t__ update_thread_context; } ;
struct TYPE_16__ {scalar_t__ allocate_progress; TYPE_5__* thread_ctx; } ;
struct TYPE_15__ {scalar_t__ data; } ;
typedef TYPE_5__ PerThreadContext ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FF_THREAD_FRAME ;
 int STATE_GET_BUFFER ;
 scalar_t__ STATE_SETTING_UP ;
 scalar_t__ THREAD_SAFE_CALLBACKS (TYPE_6__*) ;
 int atomic_init (int *,int) ;
 scalar_t__ atomic_load (int *) ;
 int atomic_store_explicit (int *,int ,int ) ;
 TYPE_12__* av_buffer_alloc (int) ;
 int av_buffer_unref (TYPE_12__**) ;
 int av_log (TYPE_6__*,int ,char*) ;
 int ff_get_buffer (TYPE_6__*,int ,int) ;
 int ff_thread_finish_setup (TYPE_6__*) ;
 int memory_order_release ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int thread_get_buffer_internal(AVCodecContext *avctx, ThreadFrame *f, int flags)
{
    PerThreadContext *p = avctx->internal->thread_ctx;
    int err;

    f->owner[0] = f->owner[1] = avctx;

    if (!(avctx->active_thread_type & FF_THREAD_FRAME))
        return ff_get_buffer(avctx, f->f, flags);

    if (atomic_load(&p->state) != STATE_SETTING_UP &&
        (avctx->codec->update_thread_context || !THREAD_SAFE_CALLBACKS(avctx))) {
        av_log(avctx, AV_LOG_ERROR, "get_buffer() cannot be called after ff_thread_finish_setup()\n");
        return -1;
    }

    if (avctx->internal->allocate_progress) {
        atomic_int *progress;
        f->progress = av_buffer_alloc(2 * sizeof(*progress));
        if (!f->progress) {
            return AVERROR(ENOMEM);
        }
        progress = (atomic_int*)f->progress->data;

        atomic_init(&progress[0], -1);
        atomic_init(&progress[1], -1);
    }

    pthread_mutex_lock(&p->parent->buffer_mutex);
    if (THREAD_SAFE_CALLBACKS(avctx)) {
        err = ff_get_buffer(avctx, f->f, flags);
    } else {
        pthread_mutex_lock(&p->progress_mutex);
        p->requested_frame = f->f;
        p->requested_flags = flags;
        atomic_store_explicit(&p->state, STATE_GET_BUFFER, memory_order_release);
        pthread_cond_broadcast(&p->progress_cond);

        while (atomic_load(&p->state) != STATE_SETTING_UP)
            pthread_cond_wait(&p->progress_cond, &p->progress_mutex);

        err = p->result;

        pthread_mutex_unlock(&p->progress_mutex);

    }
    if (!THREAD_SAFE_CALLBACKS(avctx) && !avctx->codec->update_thread_context)
        ff_thread_finish_setup(avctx);
    if (err)
        av_buffer_unref(&f->progress);

    pthread_mutex_unlock(&p->parent->buffer_mutex);

    return err;
}
