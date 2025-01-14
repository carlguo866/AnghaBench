
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct bfd_arch_info {scalar_t__ arch; scalar_t__ mach; } ;


 scalar_t__ bfd_arch_powerpc ;
 scalar_t__ bfd_arch_rs6000 ;
 scalar_t__ bfd_mach_ppc_e500 ;
 struct bfd_arch_info* gdbarch_bfd_arch_info (struct gdbarch*) ;

int
ppc_floating_point_unit_p (struct gdbarch *gdbarch)
{
  const struct bfd_arch_info *info = gdbarch_bfd_arch_info (gdbarch);
  if (info->arch == bfd_arch_powerpc)
    return (info->mach != bfd_mach_ppc_e500);
  if (info->arch == bfd_arch_rs6000)
    return 1;
  return 0;
}
