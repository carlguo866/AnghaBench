
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dclk; int vclk; int caps; int class2; int class; } ;
struct radeon_device {int dummy; } ;
struct kv_ps {int num_levels; struct kv_pl* levels; } ;
struct kv_pl {int vddc_index; int sclk; } ;


 int kv_convert_8bit_index_to_voltage (struct radeon_device*,int ) ;
 struct kv_ps* kv_get_ps (struct radeon_ps*) ;
 int printk (char*,int,int ,...) ;
 int r600_dpm_print_cap_info (int ) ;
 int r600_dpm_print_class_info (int ,int ) ;
 int r600_dpm_print_ps_status (struct radeon_device*,struct radeon_ps*) ;

void kv_dpm_print_power_state(struct radeon_device *rdev,
         struct radeon_ps *rps)
{
 int i;
 struct kv_ps *ps = kv_get_ps(rps);

 r600_dpm_print_class_info(rps->class, rps->class2);
 r600_dpm_print_cap_info(rps->caps);
 printk("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
 for (i = 0; i < ps->num_levels; i++) {
  struct kv_pl *pl = &ps->levels[i];
  printk("\t\tpower level %d    sclk: %u vddc: %u\n",
         i, pl->sclk,
         kv_convert_8bit_index_to_voltage(rdev, pl->vddc_index));
 }
 r600_dpm_print_ps_status(rdev, rps);
}
