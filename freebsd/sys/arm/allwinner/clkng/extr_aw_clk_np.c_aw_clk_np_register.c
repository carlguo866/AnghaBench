
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
struct TYPE_7__ {int shift; int width; int mask; int flags; int value; } ;
struct TYPE_5__ {int shift; int width; int mask; int flags; int value; } ;
struct aw_clk_np_sc {int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_3__ p; TYPE_1__ n; int offset; } ;
struct TYPE_8__ {int shift; int width; int flags; int value; } ;
struct TYPE_6__ {int shift; int width; int flags; int value; } ;
struct aw_clk_np_def {int flags; int lock_retries; int lock_shift; int gate_shift; TYPE_4__ p; TYPE_2__ n; int offset; int clkdef; } ;


 int aw_np_clknode_class ;
 struct clknode* clknode_create (struct clkdom*,int *,int *) ;
 struct aw_clk_np_sc* clknode_get_softc (struct clknode*) ;
 int clknode_register (struct clkdom*,struct clknode*) ;

int
aw_clk_np_register(struct clkdom *clkdom, struct aw_clk_np_def *clkdef)
{
 struct clknode *clk;
 struct aw_clk_np_sc *sc;

 clk = clknode_create(clkdom, &aw_np_clknode_class, &clkdef->clkdef);
 if (clk == ((void*)0))
  return (1);

 sc = clknode_get_softc(clk);

 sc->offset = clkdef->offset;

 sc->n.shift = clkdef->n.shift;
 sc->n.width = clkdef->n.width;
 sc->n.mask = ((1 << sc->n.width) - 1) << sc->n.shift;
 sc->n.value = clkdef->n.value;
 sc->n.flags = clkdef->n.flags;

 sc->p.shift = clkdef->p.shift;
 sc->p.width = clkdef->p.width;
 sc->p.mask = ((1 << sc->p.width) - 1) << sc->p.shift;
 sc->p.value = clkdef->p.value;
 sc->p.flags = clkdef->p.flags;

 sc->gate_shift = clkdef->gate_shift;

 sc->lock_shift = clkdef->lock_shift;
 sc->lock_retries = clkdef->lock_retries;

 sc->flags = clkdef->flags;

 clknode_register(clkdom, clk);

 return (0);
}
