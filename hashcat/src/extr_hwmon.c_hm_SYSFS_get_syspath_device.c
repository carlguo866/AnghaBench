
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pcie_function; int pcie_device; int pcie_bus; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_6__ {TYPE_3__* backend_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_7__ {TYPE_1__* devices_param; } ;
typedef TYPE_3__ backend_ctx_t ;


 int SYS_BUS_PCI_DEVICES ;
 int hc_asprintf (char**,char*,int ,int ,int ,int ) ;

__attribute__((used)) static char *hm_SYSFS_get_syspath_device (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  hc_device_param_t *device_param = &backend_ctx->devices_param[backend_device_idx];

  char *syspath;

  hc_asprintf (&syspath, "%s/0000:%02x:%02x.%01x", SYS_BUS_PCI_DEVICES, device_param->pcie_bus, device_param->pcie_device, device_param->pcie_function);

  return syspath;
}
