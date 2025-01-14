
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm {int dummy; } ;
struct nd_cmd_pkg {scalar_t__ nd_family; unsigned int nd_command; } ;


 int EOPNOTSUPP ;
 unsigned int ND_CMD_CALL ;
 scalar_t__ NVDIMM_FAMILY_INTEL ;
 int NVDIMM_INTEL_SECURITY_CMDMASK ;
 int __acpi_nfit_clear_to_send (struct nvdimm_bus_descriptor*,struct nvdimm*,unsigned int) ;

__attribute__((used)) static int acpi_nfit_clear_to_send(struct nvdimm_bus_descriptor *nd_desc,
  struct nvdimm *nvdimm, unsigned int cmd, void *buf)
{
 struct nd_cmd_pkg *call_pkg = buf;
 unsigned int func;

 if (nvdimm && cmd == ND_CMD_CALL &&
   call_pkg->nd_family == NVDIMM_FAMILY_INTEL) {
  func = call_pkg->nd_command;
  if ((1 << func) & NVDIMM_INTEL_SECURITY_CMDMASK)
   return -EOPNOTSUPP;
 }

 return __acpi_nfit_clear_to_send(nd_desc, nvdimm, cmd);
}
