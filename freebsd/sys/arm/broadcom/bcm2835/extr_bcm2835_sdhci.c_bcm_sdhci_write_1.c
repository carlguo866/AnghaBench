
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhci_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int RD4 (struct bcm_sdhci_softc*,int) ;
 int WR4 (struct bcm_sdhci_softc*,int,int) ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_sdhci_write_1(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint8_t val)
{
 struct bcm_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32 = RD4(sc, off & ~3);
 val32 &= ~(0xff << (off & 3)*8);
 val32 |= (val << (off & 3)*8);
 WR4(sc, off & ~3, val32);
}
