
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct zynqmp_clk_mux {int flags; struct clk_hw hw; int clk_id; } ;
struct clock_topology {int type_flag; int flag; } ;
struct clk_init_data {char const* name; char const* const* parent_names; int num_parents; int flags; int * ops; } ;


 int CLK_MUX_READ_ONLY ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int kfree (struct clk_hw*) ;
 struct zynqmp_clk_mux* kzalloc (int,int ) ;
 int zynqmp_clk_mux_ops ;
 int zynqmp_clk_mux_ro_ops ;

struct clk_hw *zynqmp_clk_register_mux(const char *name, u32 clk_id,
           const char * const *parents,
           u8 num_parents,
           const struct clock_topology *nodes)
{
 struct zynqmp_clk_mux *mux;
 struct clk_hw *hw;
 struct clk_init_data init;
 int ret;

 mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 if (nodes->type_flag & CLK_MUX_READ_ONLY)
  init.ops = &zynqmp_clk_mux_ro_ops;
 else
  init.ops = &zynqmp_clk_mux_ops;
 init.flags = nodes->flag;
 init.parent_names = parents;
 init.num_parents = num_parents;
 mux->flags = nodes->type_flag;
 mux->hw.init = &init;
 mux->clk_id = clk_id;

 hw = &mux->hw;
 ret = clk_hw_register(((void*)0), hw);
 if (ret) {
  kfree(hw);
  hw = ERR_PTR(ret);
 }

 return hw;
}
