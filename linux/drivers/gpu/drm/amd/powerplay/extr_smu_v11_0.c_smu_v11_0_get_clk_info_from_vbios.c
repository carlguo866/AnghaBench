
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int socclk; int dcefclk; int eclk; int vclk; int dclk; int format_revision; int content_revision; int fclk; } ;
struct TYPE_7__ {TYPE_2__ boot_values; } ;
struct smu_context {TYPE_3__ smu_table; struct amdgpu_device* adev; } ;
struct atom_get_smu_clock_info_parameters_v3_1 {void* command; int syspll_id; int clk_id; int member_0; } ;
struct TYPE_8__ {int smu_clock_freq_hz; } ;
struct atom_get_smu_clock_info_output_parameters_v3_1 {TYPE_4__ atom_smu_outputclkfreq; } ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int input ;


 int EINVAL ;
 void* GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ ;
 int SMU11_SYSPLL0_DCEFCLK_ID ;
 int SMU11_SYSPLL0_DCLK_ID ;
 int SMU11_SYSPLL0_ECLK_ID ;
 int SMU11_SYSPLL0_SOCCLK_ID ;
 int SMU11_SYSPLL0_VCLK_ID ;
 int SMU11_SYSPLL1_0_FCLK_ID ;
 int SMU11_SYSPLL1_2_ID ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int atom_master_list_of_command_functions_v2_1 ;
 int get_index_into_master_table (int ,int ) ;
 int getsmuclockinfo ;
 int le32_to_cpu (int ) ;
 int memset (struct atom_get_smu_clock_info_parameters_v3_1*,int ,int) ;

__attribute__((used)) static int smu_v11_0_get_clk_info_from_vbios(struct smu_context *smu)
{
 int ret, index;
 struct amdgpu_device *adev = smu->adev;
 struct atom_get_smu_clock_info_parameters_v3_1 input = {0};
 struct atom_get_smu_clock_info_output_parameters_v3_1 *output;

 input.clk_id = SMU11_SYSPLL0_SOCCLK_ID;
 input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
 index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
         getsmuclockinfo);

 ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
     (uint32_t *)&input);
 if (ret)
  return -EINVAL;

 output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
 smu->smu_table.boot_values.socclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;

 memset(&input, 0, sizeof(input));
 input.clk_id = SMU11_SYSPLL0_DCEFCLK_ID;
 input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
 index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
         getsmuclockinfo);

 ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
     (uint32_t *)&input);
 if (ret)
  return -EINVAL;

 output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
 smu->smu_table.boot_values.dcefclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;

 memset(&input, 0, sizeof(input));
 input.clk_id = SMU11_SYSPLL0_ECLK_ID;
 input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
 index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
         getsmuclockinfo);

 ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
     (uint32_t *)&input);
 if (ret)
  return -EINVAL;

 output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
 smu->smu_table.boot_values.eclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;

 memset(&input, 0, sizeof(input));
 input.clk_id = SMU11_SYSPLL0_VCLK_ID;
 input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
 index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
         getsmuclockinfo);

 ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
     (uint32_t *)&input);
 if (ret)
  return -EINVAL;

 output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
 smu->smu_table.boot_values.vclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;

 memset(&input, 0, sizeof(input));
 input.clk_id = SMU11_SYSPLL0_DCLK_ID;
 input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
 index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
         getsmuclockinfo);

 ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
     (uint32_t *)&input);
 if (ret)
  return -EINVAL;

 output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
 smu->smu_table.boot_values.dclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;

 if ((smu->smu_table.boot_values.format_revision == 3) &&
     (smu->smu_table.boot_values.content_revision >= 2)) {
  memset(&input, 0, sizeof(input));
  input.clk_id = SMU11_SYSPLL1_0_FCLK_ID;
  input.syspll_id = SMU11_SYSPLL1_2_ID;
  input.command = GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ;
  index = get_index_into_master_table(atom_master_list_of_command_functions_v2_1,
          getsmuclockinfo);

  ret = amdgpu_atom_execute_table(adev->mode_info.atom_context, index,
      (uint32_t *)&input);
  if (ret)
   return -EINVAL;

  output = (struct atom_get_smu_clock_info_output_parameters_v3_1 *)&input;
  smu->smu_table.boot_values.fclk = le32_to_cpu(output->atom_smu_outputclkfreq.smu_clock_freq_hz) / 10000;
 }

 return 0;
}
