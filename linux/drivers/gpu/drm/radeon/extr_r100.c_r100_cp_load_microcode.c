
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* me_fw; } ;
typedef int __be32 ;
struct TYPE_2__ {int size; int * data; } ;


 int RADEON_CP_ME_RAM_ADDR ;
 int RADEON_CP_ME_RAM_DATAH ;
 int RADEON_CP_ME_RAM_DATAL ;
 int WREG32 (int ,int ) ;
 int be32_to_cpup (int const*) ;
 int pr_warn (char*) ;
 scalar_t__ r100_gui_wait_for_idle (struct radeon_device*) ;

__attribute__((used)) static void r100_cp_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data;
 int i, size;

 if (r100_gui_wait_for_idle(rdev)) {
  pr_warn("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
 }

 if (rdev->me_fw) {
  size = rdev->me_fw->size / 4;
  fw_data = (const __be32 *)&rdev->me_fw->data[0];
  WREG32(RADEON_CP_ME_RAM_ADDR, 0);
  for (i = 0; i < size; i += 2) {
   WREG32(RADEON_CP_ME_RAM_DATAH,
          be32_to_cpup(&fw_data[i]));
   WREG32(RADEON_CP_ME_RAM_DATAL,
          be32_to_cpup(&fw_data[i + 1]));
  }
 }
}
