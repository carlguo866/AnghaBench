
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int visible; int format; int layout; int pitch; int w; scalar_t__ blocks; scalar_t__ blockh; scalar_t__ kind; scalar_t__ offset; int handle; int h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_19__ {int vdisplay; int hdisplay; } ;
struct TYPE_20__ {TYPE_6__ mode; } ;
struct TYPE_18__ {int visible; } ;
struct TYPE_17__ {scalar_t__ cpp; } ;
struct TYPE_16__ {scalar_t__ cpp; int h; int w; scalar_t__ y; scalar_t__ x; } ;
struct nv50_head_atom {TYPE_11__ core; TYPE_7__ state; TYPE_5__ curs; TYPE_4__ ovly; TYPE_3__ base; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
struct nv50_head {TYPE_2__ base; } ;
struct nv50_disp {TYPE_10__* core; } ;
struct TYPE_21__ {int handle; } ;
struct TYPE_22__ {TYPE_8__ vram; } ;
struct TYPE_12__ {TYPE_9__ chan; } ;


 int ALIGN (int ,int) ;
 struct nv50_disp* nv50_disp (int ) ;

void
head507d_core_calc(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_disp *disp = nv50_disp(head->base.base.dev);
 if ((asyh->core.visible = (asyh->base.cpp != 0))) {
  asyh->core.x = asyh->base.x;
  asyh->core.y = asyh->base.y;
  asyh->core.w = asyh->base.w;
  asyh->core.h = asyh->base.h;
 } else
 if ((asyh->core.visible = (asyh->ovly.cpp != 0)) ||
     (asyh->core.visible = asyh->curs.visible)) {





  asyh->core.x = 0;
  asyh->core.y = 0;
  asyh->core.w = asyh->state.mode.hdisplay;
  asyh->core.h = asyh->state.mode.vdisplay;
 }
 asyh->core.handle = disp->core->chan.vram.handle;
 asyh->core.offset = 0;
 asyh->core.format = 0xcf;
 asyh->core.kind = 0;
 asyh->core.layout = 1;
 asyh->core.blockh = 0;
 asyh->core.blocks = 0;
 asyh->core.pitch = ALIGN(asyh->core.w, 64) * 4;
}
