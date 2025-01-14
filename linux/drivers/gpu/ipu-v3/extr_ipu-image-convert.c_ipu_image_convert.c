
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dummy; } ;
struct ipu_image_convert_run {int out_phys; int in_phys; struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_ctx {int dummy; } ;
struct ipu_image {int phys0; } ;
typedef int ipu_image_convert_cb_t ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;


 int ENOMEM ;
 struct ipu_image_convert_run* ERR_CAST (struct ipu_image_convert_ctx*) ;
 struct ipu_image_convert_run* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ipu_image_convert_ctx*) ;
 struct ipu_image_convert_ctx* ipu_image_convert_prepare (struct ipu_soc*,int,struct ipu_image*,struct ipu_image*,int,int ,void*) ;
 int ipu_image_convert_queue (struct ipu_image_convert_run*) ;
 int ipu_image_convert_unprepare (struct ipu_image_convert_ctx*) ;
 int kfree (struct ipu_image_convert_run*) ;
 struct ipu_image_convert_run* kzalloc (int,int ) ;

struct ipu_image_convert_run *
ipu_image_convert(struct ipu_soc *ipu, enum ipu_ic_task ic_task,
    struct ipu_image *in, struct ipu_image *out,
    enum ipu_rotate_mode rot_mode,
    ipu_image_convert_cb_t complete,
    void *complete_context)
{
 struct ipu_image_convert_ctx *ctx;
 struct ipu_image_convert_run *run;
 int ret;

 ctx = ipu_image_convert_prepare(ipu, ic_task, in, out, rot_mode,
     complete, complete_context);
 if (IS_ERR(ctx))
  return ERR_CAST(ctx);

 run = kzalloc(sizeof(*run), GFP_KERNEL);
 if (!run) {
  ipu_image_convert_unprepare(ctx);
  return ERR_PTR(-ENOMEM);
 }

 run->ctx = ctx;
 run->in_phys = in->phys0;
 run->out_phys = out->phys0;

 ret = ipu_image_convert_queue(run);
 if (ret) {
  ipu_image_convert_unprepare(ctx);
  kfree(run);
  return ERR_PTR(ret);
 }

 return run;
}
