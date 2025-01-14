
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long ULONG_MAX ;
 unsigned long clk_hw_round_rate (struct clk_hw*,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long ccu_mp_find_best_with_parent_adj(struct clk_hw *hw,
            unsigned long *parent,
            unsigned long rate,
            unsigned int max_m,
            unsigned int max_p)
{
 unsigned long parent_rate_saved;
 unsigned long parent_rate, now;
 unsigned long best_rate = 0;
 unsigned int _m, _p, div;
 unsigned long maxdiv;

 parent_rate_saved = *parent;





 maxdiv = max_m * max_p;
 maxdiv = min(ULONG_MAX / rate, maxdiv);

 for (_p = 1; _p <= max_p; _p <<= 1) {
  for (_m = 1; _m <= max_m; _m++) {
   div = _m * _p;

   if (div > maxdiv)
    break;

   if (rate * div == parent_rate_saved) {






    *parent = parent_rate_saved;
    return rate;
   }

   parent_rate = clk_hw_round_rate(hw, rate * div);
   now = parent_rate / div;

   if (now <= rate && now > best_rate) {
    best_rate = now;
    *parent = parent_rate;

    if (now == rate)
     return rate;
   }
  }
 }

 return best_rate;
}
