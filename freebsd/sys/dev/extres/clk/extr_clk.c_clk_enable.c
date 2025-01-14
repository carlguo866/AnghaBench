
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clknode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* clk_t ;
struct TYPE_3__ {int enable_cnt; struct clknode* clknode; } ;


 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int KASSERT (int,char*) ;
 int clknode_enable (struct clknode*) ;

int
clk_enable(clk_t clk)
{
 int rv;
 struct clknode *clknode;

 clknode = clk->clknode;
 KASSERT(clknode->ref_cnt > 0,
    ("Attempt to access unreferenced clock: %s\n", clknode->name));
 CLK_TOPO_SLOCK();
 rv = clknode_enable(clknode);
 if (rv == 0)
  clk->enable_cnt++;
 CLK_TOPO_UNLOCK();
 return (rv);
}
