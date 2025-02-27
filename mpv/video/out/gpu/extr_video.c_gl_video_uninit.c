
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_video {int num_hwdecs; int num_dr_buffers; int osd; TYPE_4__* pass_redraw; TYPE_2__* pass_fresh; int osd_timer; int blit_timer; int upload_timer; int hdr_peak_ssbo; int ra; int lut_3d_texture; int sc; int * hwdecs; } ;
struct TYPE_7__ {struct gl_video* start; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_5__ {struct gl_video* start; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int VO_PASS_PERF_MAX ;
 int assert (int) ;
 int gc_pending_dr_fences (struct gl_video*,int) ;
 int gl_sc_destroy (int ) ;
 int mpgl_osd_destroy (int ) ;
 int ra_buf_free (int ,int *) ;
 int ra_hwdec_uninit (int ) ;
 int ra_tex_free (int ,int *) ;
 int talloc_free (struct gl_video*) ;
 int timer_pool_destroy (int ) ;
 int uninit_video (struct gl_video*) ;

void gl_video_uninit(struct gl_video *p)
{
    if (!p)
        return;

    uninit_video(p);

    for (int n = 0; n < p->num_hwdecs; n++)
        ra_hwdec_uninit(p->hwdecs[n]);
    p->num_hwdecs = 0;

    gl_sc_destroy(p->sc);

    ra_tex_free(p->ra, &p->lut_3d_texture);
    ra_buf_free(p->ra, &p->hdr_peak_ssbo);

    timer_pool_destroy(p->upload_timer);
    timer_pool_destroy(p->blit_timer);
    timer_pool_destroy(p->osd_timer);

    for (int i = 0; i < VO_PASS_PERF_MAX; i++) {
        talloc_free(p->pass_fresh[i].desc.start);
        talloc_free(p->pass_redraw[i].desc.start);
    }

    mpgl_osd_destroy(p->osd);



    gc_pending_dr_fences(p, 1);


    assert(!p->num_dr_buffers);

    talloc_free(p);
}
