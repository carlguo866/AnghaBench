
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ti_sdhci_softc {int cmd_and_mode; } ;
struct sdhci_slot {scalar_t__ version; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int MMCHS_SYSCTL_CLKD_MASK ;
 int MMCHS_SYSCTL_CLKD_SHIFT ;
 int RD4 (struct ti_sdhci_softc*,int) ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_COMMAND_FLAGS ;
 int SDHCI_DIVIDER_HI_MASK ;
 int SDHCI_DIVIDER_HI_SHIFT ;
 int SDHCI_DIVIDER_MASK ;
 int SDHCI_DIVIDER_MASK_LEN ;
 int SDHCI_DIVIDER_SHIFT ;
 scalar_t__ SDHCI_SPEC_300 ;
 int SDHCI_TRANSFER_MODE ;
 int WR4 (struct ti_sdhci_softc*,int,int) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ti_sdhci_write_2(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint16_t val)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 uint32_t clkdiv, val32;






 if (off == SDHCI_CLOCK_CONTROL) {
  clkdiv = (val >> SDHCI_DIVIDER_SHIFT) & SDHCI_DIVIDER_MASK;
  if (slot->version >= SDHCI_SPEC_300)
   clkdiv |= ((val >> SDHCI_DIVIDER_HI_SHIFT) &
       SDHCI_DIVIDER_HI_MASK) << SDHCI_DIVIDER_MASK_LEN;
  clkdiv *= 2;
  if (clkdiv > MMCHS_SYSCTL_CLKD_MASK)
   clkdiv = MMCHS_SYSCTL_CLKD_MASK;
  val32 = RD4(sc, SDHCI_CLOCK_CONTROL);
  val32 &= 0xffff0000;
  val32 |= val & ~(MMCHS_SYSCTL_CLKD_MASK <<
      MMCHS_SYSCTL_CLKD_SHIFT);
  val32 |= clkdiv << MMCHS_SYSCTL_CLKD_SHIFT;
  WR4(sc, SDHCI_CLOCK_CONTROL, val32);
  return;
 }




 if (off == SDHCI_TRANSFER_MODE) {
  sc->cmd_and_mode = (sc->cmd_and_mode & 0xffff0000) |
      ((uint32_t)val & 0x0000ffff);
  return;
 } else if (off == SDHCI_COMMAND_FLAGS) {
  sc->cmd_and_mode = (sc->cmd_and_mode & 0x0000ffff) |
      ((uint32_t)val << 16);
  WR4(sc, SDHCI_TRANSFER_MODE, sc->cmd_and_mode);
  return;
 }

 val32 = RD4(sc, off & ~3);
 val32 &= ~(0xffff << (off & 3) * 8);
 val32 |= ((val & 0xffff) << (off & 3) * 8);
 WR4(sc, off & ~3, val32);
}
