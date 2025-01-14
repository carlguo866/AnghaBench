
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_div_map {scalar_t__ gate_offs; int gate_shift; } ;
struct berlin2_div {scalar_t__ lock; scalar_t__ base; struct berlin2_div_map map; } ;


 int BIT (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (scalar_t__) ;
 int spin_unlock (scalar_t__) ;
 struct berlin2_div* to_berlin2_div (struct clk_hw*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int berlin2_div_enable(struct clk_hw *hw)
{
 struct berlin2_div *div = to_berlin2_div(hw);
 struct berlin2_div_map *map = &div->map;
 u32 reg;

 if (div->lock)
  spin_lock(div->lock);

 reg = readl_relaxed(div->base + map->gate_offs);
 reg |= BIT(map->gate_shift);
 writel_relaxed(reg, div->base + map->gate_offs);

 if (div->lock)
  spin_unlock(div->lock);

 return 0;
}
