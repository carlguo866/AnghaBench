
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_tick; int reg_in_table; int subreg_ticked; unsigned int reg_qty; int timestamp; } ;


 TYPE_1__* cse_reg_info_table ;
 int cse_reg_info_timestamp ;

__attribute__((used)) static void
get_cse_reg_info_1 (unsigned int regno)
{


  cse_reg_info_table[regno].timestamp = cse_reg_info_timestamp;


  cse_reg_info_table[regno].reg_tick = 1;
  cse_reg_info_table[regno].reg_in_table = -1;
  cse_reg_info_table[regno].subreg_ticked = -1;
  cse_reg_info_table[regno].reg_qty = -regno - 1;
}
