
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {int div; } ;


 int _get_table_mindiv (struct clk_div_table const*) ;

__attribute__((used)) static int _round_down_table(const struct clk_div_table *table, int div)
{
 const struct clk_div_table *clkt;
 int down = _get_table_mindiv(table);

 for (clkt = table; clkt->div; clkt++) {
  if (clkt->div == div)
   return clkt->div;
  else if (clkt->div > div)
   continue;

  if ((div - clkt->div) < (div - down))
   down = clkt->div;
 }

 return down;
}
