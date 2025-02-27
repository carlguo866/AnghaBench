
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_supplement_adapter_info {char* AdapterTypeText; } ;
struct TYPE_4__ {char* major; int dash; int minor; } ;
struct TYPE_5__ {TYPE_1__ comp; } ;
struct TYPE_6__ {int buildNumber; TYPE_2__ external; } ;
struct aac_softc {int supported_options; int aac_io_lock; int aac_dev; TYPE_3__ aac_revision; } ;
struct aac_fib {scalar_t__* data; } ;
struct aac_adapter_info {int TotalMem; int BufferMem; int ExecutionMem; int SerialNumber; TYPE_3__ KernelRevision; int batteryPlatform; int ClockSpeed; int CpuVariant; } ;


 int AAC_DRIVER_BUGFIX_LEVEL ;
 int AAC_DRIVER_BUILD ;
 int AAC_DRIVER_MAJOR_VERSION ;
 int AAC_DRIVER_MINOR_VERSION ;
 int AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int RequestAdapterInfo ;
 int RequestSupplementAdapterInfo ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_battery_platform ;
 int aac_cpu_variant ;
 int aac_describe_code (int ,int ) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 scalar_t__ aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aac_describe_controller(struct aac_softc *sc)
{
 struct aac_fib *fib;
 struct aac_adapter_info *info;
 char *adapter_type = "Adaptec RAID controller";

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 mtx_lock(&sc->aac_io_lock);
 aac_alloc_sync_fib(sc, &fib);

 fib->data[0] = 0;
 if (aac_sync_fib(sc, RequestAdapterInfo, 0, fib, 1)) {
  device_printf(sc->aac_dev, "RequestAdapterInfo failed\n");
  aac_release_sync_fib(sc);
  mtx_unlock(&sc->aac_io_lock);
  return;
 }


 info = (struct aac_adapter_info *)&fib->data[0];
 sc->aac_revision = info->KernelRevision;

 if (bootverbose) {
  device_printf(sc->aac_dev, "%s %dMHz, %dMB memory "
      "(%dMB cache, %dMB execution), %s\n",
      aac_describe_code(aac_cpu_variant, info->CpuVariant),
      info->ClockSpeed, info->TotalMem / (1024 * 1024),
      info->BufferMem / (1024 * 1024),
      info->ExecutionMem / (1024 * 1024),
      aac_describe_code(aac_battery_platform,
      info->batteryPlatform));

  device_printf(sc->aac_dev,
      "Kernel %d.%d-%d, Build %d, S/N %6X\n",
      info->KernelRevision.external.comp.major,
      info->KernelRevision.external.comp.minor,
      info->KernelRevision.external.comp.dash,
      info->KernelRevision.buildNumber,
      (u_int32_t)(info->SerialNumber & 0xffffff));

  device_printf(sc->aac_dev, "Supported Options=%b\n",
         sc->supported_options,
         "\20"
         "\1SNAPSHOT"
         "\2CLUSTERS"
         "\3WCACHE"
         "\4DATA64"
         "\5HOSTTIME"
         "\6RAID50"
         "\7WINDOW4GB"
         "\10SCSIUPGD"
         "\11SOFTERR"
         "\12NORECOND"
         "\13SGMAP64"
         "\14ALARM"
         "\15NONDASD"
         "\16SCSIMGT"
         "\17RAIDSCSI"
         "\21ADPTINFO"
         "\22NEWCOMM"
         "\23ARRAY64BIT"
         "\24HEATSENSOR");
 }

 if (sc->supported_options & AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO) {
  fib->data[0] = 0;
  if (aac_sync_fib(sc, RequestSupplementAdapterInfo, 0, fib, 1))
   device_printf(sc->aac_dev,
       "RequestSupplementAdapterInfo failed\n");
  else
   adapter_type = ((struct aac_supplement_adapter_info *)
       &fib->data[0])->AdapterTypeText;
 }
 device_printf(sc->aac_dev, "%s, aac driver %d.%d.%d-%d\n",
  adapter_type,
  AAC_DRIVER_MAJOR_VERSION, AAC_DRIVER_MINOR_VERSION,
  AAC_DRIVER_BUGFIX_LEVEL, AAC_DRIVER_BUILD);

 aac_release_sync_fib(sc);
 mtx_unlock(&sc->aac_io_lock);
}
