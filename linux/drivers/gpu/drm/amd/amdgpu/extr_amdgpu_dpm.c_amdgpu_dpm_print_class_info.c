
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2 ;
 int ATOM_PPLIB_CLASSIFICATION2_MVC ;
 int ATOM_PPLIB_CLASSIFICATION2_ULV ;
 int ATOM_PPLIB_CLASSIFICATION_3DLOW ;
 int ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE ;
 int ATOM_PPLIB_CLASSIFICATION_ACPI ;
 int ATOM_PPLIB_CLASSIFICATION_BOOT ;
 int ATOM_PPLIB_CLASSIFICATION_FORCED ;
 int ATOM_PPLIB_CLASSIFICATION_HD2STATE ;
 int ATOM_PPLIB_CLASSIFICATION_HDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE ;
 int ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE ;
 int ATOM_PPLIB_CLASSIFICATION_REST ;
 int ATOM_PPLIB_CLASSIFICATION_SDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_THERMAL ;


 int ATOM_PPLIB_CLASSIFICATION_UI_MASK ;


 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ;
 int pr_cont (char*) ;
 int printk (char*,...) ;

void amdgpu_dpm_print_class_info(u32 class, u32 class2)
{
 const char *s;

 switch (class & ATOM_PPLIB_CLASSIFICATION_UI_MASK) {
 case 129:
 default:
  s = "none";
  break;
 case 130:
  s = "battery";
  break;
 case 131:
  s = "balanced";
  break;
 case 128:
  s = "performance";
  break;
 }
 printk("\tui class: %s\n", s);
 printk("\tinternal class:");
 if (((class & ~ATOM_PPLIB_CLASSIFICATION_UI_MASK) == 0) &&
     (class2 == 0))
  pr_cont(" none");
 else {
  if (class & ATOM_PPLIB_CLASSIFICATION_BOOT)
   pr_cont(" boot");
  if (class & ATOM_PPLIB_CLASSIFICATION_THERMAL)
   pr_cont(" thermal");
  if (class & ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE)
   pr_cont(" limited_pwr");
  if (class & ATOM_PPLIB_CLASSIFICATION_REST)
   pr_cont(" rest");
  if (class & ATOM_PPLIB_CLASSIFICATION_FORCED)
   pr_cont(" forced");
  if (class & ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE)
   pr_cont(" 3d_perf");
  if (class & ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE)
   pr_cont(" ovrdrv");
  if (class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
   pr_cont(" uvd");
  if (class & ATOM_PPLIB_CLASSIFICATION_3DLOW)
   pr_cont(" 3d_low");
  if (class & ATOM_PPLIB_CLASSIFICATION_ACPI)
   pr_cont(" acpi");
  if (class & ATOM_PPLIB_CLASSIFICATION_HD2STATE)
   pr_cont(" uvd_hd2");
  if (class & ATOM_PPLIB_CLASSIFICATION_HDSTATE)
   pr_cont(" uvd_hd");
  if (class & ATOM_PPLIB_CLASSIFICATION_SDSTATE)
   pr_cont(" uvd_sd");
  if (class2 & ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2)
   pr_cont(" limited_pwr2");
  if (class2 & ATOM_PPLIB_CLASSIFICATION2_ULV)
   pr_cont(" ulv");
  if (class2 & ATOM_PPLIB_CLASSIFICATION2_MVC)
   pr_cont(" uvd_mvc");
 }
 pr_cont("\n");
}
