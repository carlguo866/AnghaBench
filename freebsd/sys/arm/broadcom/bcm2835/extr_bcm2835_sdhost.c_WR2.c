
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bcm_sdhost_softc {int dummy; } ;
typedef int bus_size_t ;


 int RD4 (struct bcm_sdhost_softc*,int) ;
 int WR4 (struct bcm_sdhost_softc*,int,int) ;

__attribute__((used)) static inline void
WR2(struct bcm_sdhost_softc *sc, bus_size_t off, uint16_t val)
{
 uint32_t val32;

 val32 = RD4(sc, off & ~3);
 val32 &= ~(0xffff << (off & 3)*8);
 val32 |= (val << (off & 3)*8);
 WR4(sc, off & ~3, val32);
}
