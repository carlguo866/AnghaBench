
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int target_avail_regs ;
 unsigned int target_pres_cost ;
 unsigned int target_res_regs ;
 unsigned int target_small_cost ;
 unsigned int target_spill_cost ;

unsigned
global_cost_for_size (unsigned size, unsigned regs_used, unsigned n_uses)
{
  unsigned regs_needed = regs_used + size;
  unsigned cost = 0;

  if (regs_needed + target_res_regs <= target_avail_regs)
    cost += target_small_cost * size;
  else if (regs_needed <= target_avail_regs)
    cost += target_pres_cost * size;
  else
    {
      cost += target_pres_cost * size;
      cost += target_spill_cost * n_uses * (regs_needed - target_avail_regs) / regs_needed;
    }

  return cost;
}
