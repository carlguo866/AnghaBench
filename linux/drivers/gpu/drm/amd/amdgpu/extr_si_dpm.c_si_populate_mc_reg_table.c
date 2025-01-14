
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {scalar_t__ vddc; } ;
struct si_ulv_param {TYPE_5__ pl; scalar_t__ supported; } ;
struct si_ps {TYPE_5__* performance_levels; } ;
struct TYPE_7__ {int valid_flag; int last; int * mc_reg_table_entry; } ;
struct TYPE_8__ {int * data; } ;
struct si_power_info {int sram_end; int mc_reg_table_start; TYPE_1__ mc_reg_table; TYPE_2__ smc_mc_reg_table; struct si_ulv_param ulv; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef TYPE_2__ SMC_SIslands_MCRegisters ;


 size_t SISLANDS_MCREGISTERTABLE_ACPI_SLOT ;
 size_t SISLANDS_MCREGISTERTABLE_INITIAL_SLOT ;
 size_t SISLANDS_MCREGISTERTABLE_ULV_SLOT ;
 int SI_SMC_SOFT_REGISTER_seq_index ;
 int amdgpu_si_copy_bytes_to_smc (struct amdgpu_device*,int ,int *,int,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int si_convert_mc_reg_table_entry_to_smc (struct amdgpu_device*,TYPE_5__*,int *) ;
 int si_convert_mc_reg_table_to_smc (struct amdgpu_device*,struct amdgpu_ps*,TYPE_2__*) ;
 int si_convert_mc_registers (int *,int *,int ,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;
 int si_populate_mc_reg_addresses (struct amdgpu_device*,TYPE_2__*) ;
 int si_write_smc_soft_register (struct amdgpu_device*,int ,int) ;

__attribute__((used)) static int si_populate_mc_reg_table(struct amdgpu_device *adev,
        struct amdgpu_ps *amdgpu_boot_state)
{
 struct si_ps *boot_state = si_get_ps(amdgpu_boot_state);
 struct si_power_info *si_pi = si_get_pi(adev);
 struct si_ulv_param *ulv = &si_pi->ulv;
 SMC_SIslands_MCRegisters *smc_mc_reg_table = &si_pi->smc_mc_reg_table;

 memset(smc_mc_reg_table, 0, sizeof(SMC_SIslands_MCRegisters));

 si_write_smc_soft_register(adev, SI_SMC_SOFT_REGISTER_seq_index, 1);

 si_populate_mc_reg_addresses(adev, smc_mc_reg_table);

 si_convert_mc_reg_table_entry_to_smc(adev, &boot_state->performance_levels[0],
          &smc_mc_reg_table->data[SISLANDS_MCREGISTERTABLE_INITIAL_SLOT]);

 si_convert_mc_registers(&si_pi->mc_reg_table.mc_reg_table_entry[0],
    &smc_mc_reg_table->data[SISLANDS_MCREGISTERTABLE_ACPI_SLOT],
    si_pi->mc_reg_table.last,
    si_pi->mc_reg_table.valid_flag);

 if (ulv->supported && ulv->pl.vddc != 0)
  si_convert_mc_reg_table_entry_to_smc(adev, &ulv->pl,
           &smc_mc_reg_table->data[SISLANDS_MCREGISTERTABLE_ULV_SLOT]);
 else
  si_convert_mc_registers(&si_pi->mc_reg_table.mc_reg_table_entry[0],
     &smc_mc_reg_table->data[SISLANDS_MCREGISTERTABLE_ULV_SLOT],
     si_pi->mc_reg_table.last,
     si_pi->mc_reg_table.valid_flag);

 si_convert_mc_reg_table_to_smc(adev, amdgpu_boot_state, smc_mc_reg_table);

 return amdgpu_si_copy_bytes_to_smc(adev, si_pi->mc_reg_table_start,
        (u8 *)smc_mc_reg_table,
        sizeof(SMC_SIslands_MCRegisters), si_pi->sram_end);
}
