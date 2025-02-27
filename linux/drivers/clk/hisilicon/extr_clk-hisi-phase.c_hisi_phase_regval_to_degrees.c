
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk_hisi_phase {int phase_num; scalar_t__* phase_regvals; int* phase_degrees; } ;


 int EINVAL ;

__attribute__((used)) static int hisi_phase_regval_to_degrees(struct clk_hisi_phase *phase,
     u32 regval)
{
 int i;

 for (i = 0; i < phase->phase_num; i++)
  if (phase->phase_regvals[i] == regval)
   return phase->phase_degrees[i];

 return -EINVAL;
}
