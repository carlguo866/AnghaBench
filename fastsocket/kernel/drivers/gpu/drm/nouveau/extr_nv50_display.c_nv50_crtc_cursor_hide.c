
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_mast {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct nouveau_crtc {int index; TYPE_1__ base; } ;


 scalar_t__ NV84_DISP_MAST_CLASS ;
 scalar_t__ NVD0_DISP_MAST_CLASS ;
 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_mast*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_mast*,int) ;
 struct nv50_mast* nv50_mast (int ) ;
 scalar_t__ nv50_vers (struct nv50_mast*) ;

__attribute__((used)) static void
nv50_crtc_cursor_hide(struct nouveau_crtc *nv_crtc)
{
 struct nv50_mast *mast = nv50_mast(nv_crtc->base.dev);
 u32 *push = evo_wait(mast, 16);
 if (push) {
  if (nv50_vers(mast) < NV84_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0880 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x05000000);
  } else
  if (nv50_vers(mast) < NVD0_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0880 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x05000000);
   evo_mthd(push, 0x089c + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x00000000);
  } else {
   evo_mthd(push, 0x0480 + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0x05000000);
   evo_mthd(push, 0x048c + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0x00000000);
  }
  evo_kick(push, mast);
 }
}
