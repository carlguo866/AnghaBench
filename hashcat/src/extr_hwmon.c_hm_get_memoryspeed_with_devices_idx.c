
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int enabled; TYPE_2__* hm_device; scalar_t__ hm_nvml; scalar_t__ hm_sysfs; scalar_t__ hm_adl; } ;
typedef TYPE_3__ hwmon_ctx_t ;
struct TYPE_15__ {TYPE_5__* backend_ctx; TYPE_3__* hwmon_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;
struct TYPE_16__ {TYPE_1__* devices_param; } ;
typedef TYPE_5__ backend_ctx_t ;
struct TYPE_17__ {int iSize; int iMemoryClock; } ;
struct TYPE_13__ {int memoryspeed_get_supported; int nvml; int adl; } ;
struct TYPE_12__ {int is_cuda; int is_opencl; int opencl_device_type; scalar_t__ opencl_device_vendor_id; } ;
typedef TYPE_6__ ADLPMActivity ;


 int CL_DEVICE_TYPE_GPU ;
 int NVML_CLOCK_MEM ;
 scalar_t__ VENDOR_ID_AMD ;
 scalar_t__ VENDOR_ID_NV ;
 int hm_ADL_Overdrive_CurrentActivity_Get (TYPE_4__*,int ,TYPE_6__*) ;
 int hm_NVML_nvmlDeviceGetClockInfo (TYPE_4__*,int ,int ,unsigned int*) ;
 int hm_SYSFS_get_pp_dpm_mclk (TYPE_4__*,int const,int*) ;

int hm_get_memoryspeed_with_devices_idx (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  if (hwmon_ctx->enabled == 0) return -1;

  if (hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported == 0) return -1;

  if (backend_ctx->devices_param[backend_device_idx].is_cuda == 1)
  {
    if (hwmon_ctx->hm_nvml)
    {
      unsigned int clockfreq;

      if (hm_NVML_nvmlDeviceGetClockInfo (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].nvml, NVML_CLOCK_MEM, &clockfreq) == -1)
      {
        hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported = 0;

        return -1;
      }

      return clockfreq;
    }
  }

  if (backend_ctx->devices_param[backend_device_idx].is_opencl == 1)
  {
    if ((backend_ctx->devices_param[backend_device_idx].opencl_device_type & CL_DEVICE_TYPE_GPU) == 0) return -1;

    if (backend_ctx->devices_param[backend_device_idx].opencl_device_vendor_id == VENDOR_ID_AMD)
    {
      if (hwmon_ctx->hm_adl)
      {
        ADLPMActivity PMActivity;

        PMActivity.iSize = sizeof (ADLPMActivity);

        if (hm_ADL_Overdrive_CurrentActivity_Get (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].adl, &PMActivity) == -1)
        {
          hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported = 0;

          return -1;
        }

        return PMActivity.iMemoryClock / 100;
      }

      if (hwmon_ctx->hm_sysfs)
      {
        int clockfreq;

        if (hm_SYSFS_get_pp_dpm_mclk (hashcat_ctx, backend_device_idx, &clockfreq) == -1)
        {
          hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported = 0;

          return -1;
        }

        return clockfreq;
      }
    }

    if (backend_ctx->devices_param[backend_device_idx].opencl_device_vendor_id == VENDOR_ID_NV)
    {
      if (hwmon_ctx->hm_nvml)
      {
        unsigned int clockfreq;

        if (hm_NVML_nvmlDeviceGetClockInfo (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].nvml, NVML_CLOCK_MEM, &clockfreq) == -1)
        {
          hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported = 0;

          return -1;
        }

        return clockfreq;
      }
    }
  }

  hwmon_ctx->hm_device[backend_device_idx].memoryspeed_get_supported = 0;

  return -1;
}
