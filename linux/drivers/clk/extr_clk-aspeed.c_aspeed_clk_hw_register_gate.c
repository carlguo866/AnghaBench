
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct aspeed_clk_gate {struct clk_hw hw; int * lock; void* flags; void* reset_idx; void* clock_idx; struct regmap* map; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int aspeed_clk_gate_ops ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 int kfree (struct aspeed_clk_gate*) ;
 struct aspeed_clk_gate* kzalloc (int,int ) ;

__attribute__((used)) static struct clk_hw *aspeed_clk_hw_register_gate(struct device *dev,
  const char *name, const char *parent_name, unsigned long flags,
  struct regmap *map, u8 clock_idx, u8 reset_idx,
  u8 clk_gate_flags, spinlock_t *lock)
{
 struct aspeed_clk_gate *gate;
 struct clk_init_data init;
 struct clk_hw *hw;
 int ret;

 gate = kzalloc(sizeof(*gate), GFP_KERNEL);
 if (!gate)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &aspeed_clk_gate_ops;
 init.flags = flags;
 init.parent_names = parent_name ? &parent_name : ((void*)0);
 init.num_parents = parent_name ? 1 : 0;

 gate->map = map;
 gate->clock_idx = clock_idx;
 gate->reset_idx = reset_idx;
 gate->flags = clk_gate_flags;
 gate->lock = lock;
 gate->hw.init = &init;

 hw = &gate->hw;
 ret = clk_hw_register(dev, hw);
 if (ret) {
  kfree(gate);
  hw = ERR_PTR(ret);
 }

 return hw;
}
