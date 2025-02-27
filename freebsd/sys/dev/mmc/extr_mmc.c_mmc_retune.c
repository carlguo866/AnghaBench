
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int retune_needed; scalar_t__ retune_paused; } ;
struct mmc_ivars {int dummy; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef scalar_t__ device_t ;



 int MMC_ERR_BADCRC ;
 int MMC_ERR_FAILED ;
 int MMC_ERR_INVALID ;
 scalar_t__ MMC_ERR_NONE ;
 int bus_timing_mmc_hs400 ;
 struct mmc_ivars* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct mmc_softc* device_get_softc (scalar_t__) ;
 scalar_t__ mmc_switch_to_hs200 (struct mmc_softc*,struct mmc_ivars*,int ) ;
 scalar_t__ mmc_switch_to_hs400 (struct mmc_softc*,struct mmc_ivars*,int ,int) ;
 int mmcbr_get_clock (scalar_t__) ;
 int mmcbr_get_timing (scalar_t__) ;
 int mmcbr_retune (scalar_t__,int) ;

__attribute__((used)) static int
mmc_retune(device_t busdev, device_t dev, bool reset)
{
 struct mmc_softc *sc;
 struct mmc_ivars *ivar;
 int err;
 uint32_t clock;
 enum mmc_bus_timing timing;

 if (device_get_parent(dev) != busdev)
  return (MMC_ERR_INVALID);

 sc = device_get_softc(busdev);
 if (sc->retune_needed != 1 && sc->retune_paused != 0)
  return (MMC_ERR_INVALID);

 timing = mmcbr_get_timing(busdev);
 if (timing == bus_timing_mmc_hs400) {
  if (reset == 0)
   return (0);
  ivar = device_get_ivars(dev);
  clock = mmcbr_get_clock(busdev);
  if (mmc_switch_to_hs200(sc, ivar, clock) != MMC_ERR_NONE)
   return (MMC_ERR_BADCRC);
 }
 err = mmcbr_retune(busdev, reset);
 if (err != 0 && timing == bus_timing_mmc_hs400)
  return (MMC_ERR_BADCRC);
 switch (err) {
 case 0:
  break;
 case 128:
  return (MMC_ERR_FAILED);
 default:
  return (MMC_ERR_INVALID);
 }
 if (timing == bus_timing_mmc_hs400) {
  if (mmc_switch_to_hs400(sc, ivar, clock, timing) !=
      MMC_ERR_NONE)
   return (MMC_ERR_BADCRC);
 }
 return (MMC_ERR_NONE);
}
