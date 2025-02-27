
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {int index; TYPE_2__ base; } ;
struct nv50_head {TYPE_3__ base; } ;
struct nv50_dmac {int dummy; } ;
struct TYPE_8__ {TYPE_1__* core; } ;
struct TYPE_5__ {struct nv50_dmac chan; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_dmac*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_dmac*,int) ;
 TYPE_4__* nv50_disp (int ) ;

void
headc57d_olut_clr(struct nv50_head *head)
{
 struct nv50_dmac *core = &nv50_disp(head->base.base.dev)->core->chan;
 u32 *push;
 if ((push = evo_wait(core, 2))) {
  evo_mthd(push, 0x2288 + (head->base.index * 0x400), 1);
  evo_data(push, 0x00000000);
  evo_kick(push, core);
 }
}
