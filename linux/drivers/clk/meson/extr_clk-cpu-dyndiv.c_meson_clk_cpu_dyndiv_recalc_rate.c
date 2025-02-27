
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct meson_clk_cpu_dyndiv_data {TYPE_1__ div; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,int ,int *,int ,int ) ;
 struct meson_clk_cpu_dyndiv_data* meson_clk_cpu_dyndiv_data (struct clk_regmap*) ;
 int meson_parm_read (int ,TYPE_1__*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static unsigned long meson_clk_cpu_dyndiv_recalc_rate(struct clk_hw *hw,
            unsigned long prate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct meson_clk_cpu_dyndiv_data *data = meson_clk_cpu_dyndiv_data(clk);

 return divider_recalc_rate(hw, prate,
       meson_parm_read(clk->map, &data->div),
       ((void*)0), 0, data->div.width);
}
