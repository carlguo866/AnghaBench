
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo_frame {int dummy; } ;
struct mpv_render_context {TYPE_2__* renderer; int lock; int cur_frame; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* perfdata ) (TYPE_2__*,void*) ;int (* screenshot ) (TYPE_2__*,struct vo_frame*,void*) ;} ;




 int VO_NOTIMPL ;
 int VO_TRUE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,struct vo_frame*,void*) ;
 int stub2 (TYPE_2__*,void*) ;
 int talloc_free (struct vo_frame*) ;
 struct vo_frame* vo_frame_ref (int ) ;

__attribute__((used)) static void run_control_on_render_thread(void *p)
{
    void **args = p;
    struct mpv_render_context *ctx = args[0];
    int request = (intptr_t)args[1];
    void *data = args[2];
    int ret = VO_NOTIMPL;

    switch (request) {
    case 128: {
        pthread_mutex_lock(&ctx->lock);
        struct vo_frame *frame = vo_frame_ref(ctx->cur_frame);
        pthread_mutex_unlock(&ctx->lock);
        if (frame && ctx->renderer->fns->screenshot)
            ctx->renderer->fns->screenshot(ctx->renderer, frame, data);
        talloc_free(frame);
        break;
    }
    case 129: {
        if (ctx->renderer->fns->perfdata) {
            ctx->renderer->fns->perfdata(ctx->renderer, data);
            ret = VO_TRUE;
        }
        break;
    }
    }

    *(int *)args[3] = ret;
}
