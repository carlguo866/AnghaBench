
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct scaler {TYPE_1__* kernel; } ;
struct image {float w; float h; int components; } ;
struct gl_video {TYPE_2__* ra; int sc; } ;
struct TYPE_4__ {int caps; int max_shmem; } ;
struct TYPE_3__ {int radius_cutoff; } ;


 int RA_CAP_COMPUTE ;
 int RA_CAP_GATHER ;
 int ceil (int) ;
 int pass_compute_polar (int ,struct scaler*,int,int,int,int,int) ;
 int pass_is_compute (struct gl_video*,int,int,int) ;
 int pass_sample_polar (int ,struct scaler*,int,int) ;

__attribute__((used)) static void pass_dispatch_sample_polar(struct gl_video *p, struct scaler *scaler,
                                       struct image img, int w, int h)
{
    uint64_t reqs = RA_CAP_COMPUTE;
    if ((p->ra->caps & reqs) != reqs)
        goto fallback;

    int bound = ceil(scaler->kernel->radius_cutoff);
    int offset = bound - 1;
    int padding = offset + bound;

    float ratiox = (float)w / img.w,
          ratioy = (float)h / img.h;




    const int warp_size = 32, threads = 256;
    int bw = warp_size;
    int bh = threads / bw;



    int iw = (int)ceil(bw / ratiox) + padding + 1,
        ih = (int)ceil(bh / ratioy) + padding + 1;

    int shmem_req = iw * ih * img.components * sizeof(float);
    if (shmem_req > p->ra->max_shmem)
        goto fallback;

    pass_is_compute(p, bw, bh, 0);
    pass_compute_polar(p->sc, scaler, img.components, bw, bh, iw, ih);
    return;

fallback:


    pass_sample_polar(p->sc, scaler, img.components,
                      p->ra->caps & RA_CAP_GATHER);
}
