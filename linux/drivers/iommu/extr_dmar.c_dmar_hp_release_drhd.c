
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_drhd_unit {int list; } ;
struct acpi_dmar_header {int dummy; } ;
struct acpi_dmar_hardware_unit {int dummy; } ;


 struct dmar_drhd_unit* dmar_find_dmaru (struct acpi_dmar_hardware_unit*) ;
 int dmar_free_drhd (struct dmar_drhd_unit*) ;
 int list_del_rcu (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int dmar_hp_release_drhd(struct acpi_dmar_header *header, void *arg)
{
 struct dmar_drhd_unit *dmaru;

 dmaru = dmar_find_dmaru((struct acpi_dmar_hardware_unit *)header);
 if (dmaru) {
  list_del_rcu(&dmaru->list);
  synchronize_rcu();
  dmar_free_drhd(dmaru);
 }

 return 0;
}
