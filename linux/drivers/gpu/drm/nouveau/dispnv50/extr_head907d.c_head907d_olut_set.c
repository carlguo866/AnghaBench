
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int mode; int offset; int handle; } ;
struct nv50_head_atom {TYPE_3__ olut; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {int index; TYPE_1__ base; } ;
struct nv50_head {TYPE_2__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_10__ {TYPE_4__* core; } ;
struct TYPE_9__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_5__* nv50_disp (int ) ;

void
head907d_olut_set(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 *push;
 if ((push = evo_wait(core, 5))) {
  evo_mthd(push, 0x0448 + (head->base.index * 0x300), 2);
  evo_data(push, 0x80000000 | asyh->olut.mode << 24);
  evo_data(push, asyh->olut.offset >> 8);
  evo_mthd(push, 0x045c + (head->base.index * 0x300), 1);
  evo_data(push, asyh->olut.handle);
  evo_kick(push, core);
 }
}
