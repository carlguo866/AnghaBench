
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvif_mmu {int dummy; } ;
struct nv50_wndw_func {scalar_t__ blend_set; scalar_t__ ilut; } ;
struct TYPE_12__ {int func; } ;
struct TYPE_11__ {int list; int * parent; } ;
struct TYPE_9__ {int user; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct TYPE_8__ {int type; scalar_t__ data; } ;
struct nv50_wndw {int id; int plane; struct nv50_wndw_func const* func; TYPE_6__ notify; int ilut; TYPE_5__ ctxdma; TYPE_4__ wndw; TYPE_2__ interlock; } ;
struct nv50_disp {int dummy; } ;
struct TYPE_7__ {struct nvif_mmu mmu; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int dummy; } ;
typedef enum nv50_disp_interlock_type { ____Placeholder_nv50_disp_interlock_type } nv50_disp_interlock_type ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int BIT (int ) ;
 int DRM_MODE_BLEND_COVERAGE ;
 int DRM_MODE_BLEND_PIXEL_NONE ;
 int DRM_MODE_BLEND_PREMULTI ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drm_plane_create_alpha_property (int *) ;
 int drm_plane_create_blend_mode_property (int *,int) ;
 int drm_plane_create_zpos_immutable_property (int *,int ) ;
 int drm_plane_create_zpos_property (int *,int ,int ,int) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (struct drm_device*,int *,scalar_t__,int *,scalar_t__ const*,int,int *,int,char*,char const*,int) ;
 int kfree (struct nv50_wndw*) ;
 struct nv50_wndw* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nv50_disp* nv50_disp (struct drm_device*) ;
 int nv50_lut_init (struct nv50_disp*,struct nvif_mmu*,int *) ;
 int nv50_wndw ;
 int nv50_wndw_helper ;
 int nv50_wndw_notify ;
 int nv50_wndw_zpos_default (int *) ;

int
nv50_wndw_new_(const struct nv50_wndw_func *func, struct drm_device *dev,
        enum drm_plane_type type, const char *name, int index,
        const u32 *format, u32 heads,
        enum nv50_disp_interlock_type interlock_type, u32 interlock_data,
        struct nv50_wndw **pwndw)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvif_mmu *mmu = &drm->client.mmu;
 struct nv50_disp *disp = nv50_disp(dev);
 struct nv50_wndw *wndw;
 int nformat;
 int ret;

 if (!(wndw = *pwndw = kzalloc(sizeof(*wndw), GFP_KERNEL)))
  return -ENOMEM;
 wndw->func = func;
 wndw->id = index;
 wndw->interlock.type = interlock_type;
 wndw->interlock.data = interlock_data;

 wndw->ctxdma.parent = &wndw->wndw.base.user;
 INIT_LIST_HEAD(&wndw->ctxdma.list);

 for (nformat = 0; format[nformat]; nformat++);

 ret = drm_universal_plane_init(dev, &wndw->plane, heads, &nv50_wndw,
           format, nformat, ((void*)0),
           type, "%s-%d", name, index);
 if (ret) {
  kfree(*pwndw);
  *pwndw = ((void*)0);
  return ret;
 }

 drm_plane_helper_add(&wndw->plane, &nv50_wndw_helper);

 if (wndw->func->ilut) {
  ret = nv50_lut_init(disp, mmu, &wndw->ilut);
  if (ret)
   return ret;
 }

 wndw->notify.func = nv50_wndw_notify;

 if (wndw->func->blend_set) {
  ret = drm_plane_create_zpos_property(&wndw->plane,
    nv50_wndw_zpos_default(&wndw->plane), 0, 254);
  if (ret)
   return ret;

  ret = drm_plane_create_alpha_property(&wndw->plane);
  if (ret)
   return ret;

  ret = drm_plane_create_blend_mode_property(&wndw->plane,
    BIT(DRM_MODE_BLEND_PIXEL_NONE) |
    BIT(DRM_MODE_BLEND_PREMULTI) |
    BIT(DRM_MODE_BLEND_COVERAGE));
  if (ret)
   return ret;
 } else {
  ret = drm_plane_create_zpos_immutable_property(&wndw->plane,
    nv50_wndw_zpos_default(&wndw->plane));
  if (ret)
   return ret;
 }

 return 0;
}
