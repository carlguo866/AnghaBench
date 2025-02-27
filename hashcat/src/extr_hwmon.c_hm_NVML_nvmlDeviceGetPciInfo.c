
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ nvmlReturn_t ;
typedef int nvmlPciInfo_t ;
typedef int nvmlDevice_t ;
struct TYPE_7__ {scalar_t__ hm_nvml; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_8__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_9__ {scalar_t__ (* nvmlDeviceGetPciInfo ) (int ,int *) ;} ;
typedef TYPE_3__ NVML_PTR ;


 scalar_t__ const NVML_SUCCESS ;
 int event_log_error (TYPE_2__*,char*,char const*) ;
 char* hm_NVML_nvmlErrorString (TYPE_3__*,scalar_t__ const) ;
 scalar_t__ stub1 (int ,int *) ;

__attribute__((used)) static int hm_NVML_nvmlDeviceGetPciInfo (hashcat_ctx_t *hashcat_ctx, nvmlDevice_t device, nvmlPciInfo_t *pci)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  NVML_PTR *nvml = (NVML_PTR *) hwmon_ctx->hm_nvml;

  const nvmlReturn_t nvml_rc = nvml->nvmlDeviceGetPciInfo (device, pci);

  if (nvml_rc != NVML_SUCCESS)
  {
    const char *string = hm_NVML_nvmlErrorString (nvml, nvml_rc);

    event_log_error (hashcat_ctx, "nvmlDeviceGetPciInfo(): %s", string);

    return -1;
  }

  return 0;
}
