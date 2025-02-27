
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct rv7xx_power_info {int sram_end; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int * performance_levels; } ;
struct TYPE_6__ {int valid_flag; int last; int * mc_reg_table_entry; } ;
struct TYPE_7__ {int * data; } ;
struct ni_power_info {TYPE_1__ mc_reg_table; TYPE_2__ smc_mc_reg_table; } ;
struct evergreen_power_info {int mc_reg_table_start; } ;
typedef TYPE_2__ SMC_NIslands_MCRegisters ;


 int NI_SMC_SOFT_REGISTER_seq_index ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int memset (TYPE_2__*,int ,int) ;
 int ni_convert_mc_reg_table_entry_to_smc (struct radeon_device*,int *,int *) ;
 int ni_convert_mc_reg_table_to_smc (struct radeon_device*,struct radeon_ps*,TYPE_2__*) ;
 int ni_convert_mc_registers (int *,int *,int ,int ) ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 int ni_populate_mc_reg_addresses (struct radeon_device*,TYPE_2__*) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_write_smc_soft_register (struct radeon_device*,int ,int) ;

__attribute__((used)) static int ni_populate_mc_reg_table(struct radeon_device *rdev,
        struct radeon_ps *radeon_boot_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 struct ni_ps *boot_state = ni_get_ps(radeon_boot_state);
 SMC_NIslands_MCRegisters *mc_reg_table = &ni_pi->smc_mc_reg_table;

 memset(mc_reg_table, 0, sizeof(SMC_NIslands_MCRegisters));

 rv770_write_smc_soft_register(rdev, NI_SMC_SOFT_REGISTER_seq_index, 1);

 ni_populate_mc_reg_addresses(rdev, mc_reg_table);

 ni_convert_mc_reg_table_entry_to_smc(rdev, &boot_state->performance_levels[0],
          &mc_reg_table->data[0]);

 ni_convert_mc_registers(&ni_pi->mc_reg_table.mc_reg_table_entry[0],
    &mc_reg_table->data[1],
    ni_pi->mc_reg_table.last,
    ni_pi->mc_reg_table.valid_flag);

 ni_convert_mc_reg_table_to_smc(rdev, radeon_boot_state, mc_reg_table);

 return rv770_copy_bytes_to_smc(rdev, eg_pi->mc_reg_table_start,
           (u8 *)mc_reg_table,
           sizeof(SMC_NIslands_MCRegisters),
           pi->sram_end);
}
