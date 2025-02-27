
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_13__ {int b_frame_interval_type; } ;
struct TYPE_12__ {TYPE_7__* ci_parent; TYPE_2__* ci_group; } ;
struct uvcg_frame {int * dw_frame_interval; TYPE_6__ frame; TYPE_5__ item; } ;
struct uvcg_format {scalar_t__ linked; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_14__ {TYPE_4__* ci_parent; } ;
struct TYPE_11__ {TYPE_3__* ci_parent; } ;
struct TYPE_10__ {struct config_item* ci_parent; } ;
struct TYPE_9__ {TYPE_1__* cg_subsys; } ;
struct TYPE_8__ {struct mutex su_mutex; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __uvcg_count_frm_intrv ;
 int __uvcg_fill_frm_intrv ;
 int __uvcg_iter_frm_intrv (char const*,size_t,int ,int*) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int sort (int *,int,int,int ,int *) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;
 struct uvcg_format* to_uvcg_format (TYPE_7__*) ;
 struct uvcg_frame* to_uvcg_frame (struct config_item*) ;
 int uvcg_config_compare_u32 ;

__attribute__((used)) static ssize_t uvcg_frame_dw_frame_interval_store(struct config_item *item,
        const char *page, size_t len)
{
 struct uvcg_frame *ch = to_uvcg_frame(item);
 struct f_uvc_opts *opts;
 struct config_item *opts_item;
 struct uvcg_format *fmt;
 struct mutex *su_mutex = &ch->item.ci_group->cg_subsys->su_mutex;
 int ret = 0, n = 0;
 u32 *frm_intrv, *tmp;

 mutex_lock(su_mutex);

 opts_item = ch->item.ci_parent->ci_parent->ci_parent->ci_parent;
 opts = to_f_uvc_opts(opts_item);
 fmt = to_uvcg_format(ch->item.ci_parent);

 mutex_lock(&opts->lock);
 if (fmt->linked || opts->refcnt) {
  ret = -EBUSY;
  goto end;
 }

 ret = __uvcg_iter_frm_intrv(page, len, __uvcg_count_frm_intrv, &n);
 if (ret)
  goto end;

 tmp = frm_intrv = kcalloc(n, sizeof(u32), GFP_KERNEL);
 if (!frm_intrv) {
  ret = -ENOMEM;
  goto end;
 }

 ret = __uvcg_iter_frm_intrv(page, len, __uvcg_fill_frm_intrv, &tmp);
 if (ret) {
  kfree(frm_intrv);
  goto end;
 }

 kfree(ch->dw_frame_interval);
 ch->dw_frame_interval = frm_intrv;
 ch->frame.b_frame_interval_type = n;
 sort(ch->dw_frame_interval, n, sizeof(*ch->dw_frame_interval),
      uvcg_config_compare_u32, ((void*)0));
 ret = len;

end:
 mutex_unlock(&opts->lock);
 mutex_unlock(su_mutex);
 return ret;
}
