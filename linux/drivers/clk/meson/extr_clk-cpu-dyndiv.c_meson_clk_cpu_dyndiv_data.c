
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_clk_cpu_dyndiv_data {int dummy; } ;
struct clk_regmap {scalar_t__ data; } ;



__attribute__((used)) static inline struct meson_clk_cpu_dyndiv_data *
meson_clk_cpu_dyndiv_data(struct clk_regmap *clk)
{
 return (struct meson_clk_cpu_dyndiv_data *)clk->data;
}
