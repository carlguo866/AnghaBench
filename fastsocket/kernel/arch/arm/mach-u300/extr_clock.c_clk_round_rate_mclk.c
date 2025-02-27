
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long EINVAL ;

__attribute__((used)) static unsigned long clk_round_rate_mclk(struct clk *clk, unsigned long rate)
{
 if (rate >= 18900000)
  return 18900000;
 if (rate >= 20800000)
  return 20800000;
 if (rate >= 23100000)
  return 23100000;
 if (rate >= 26000000)
  return 26000000;
 if (rate >= 29700000)
  return 29700000;
 if (rate >= 34700000)
  return 34700000;
 if (rate >= 41600000)
  return 41600000;
 if (rate >= 52000000)
  return 52000000;
 return -EINVAL;
}
