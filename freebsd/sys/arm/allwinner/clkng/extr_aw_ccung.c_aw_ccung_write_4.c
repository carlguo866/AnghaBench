
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_ccung_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CCU_WRITE4 (struct aw_ccung_softc*,int ,int ) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 int dprintf (char*,int ,int ) ;

__attribute__((used)) static int
aw_ccung_write_4(device_t dev, bus_addr_t addr, uint32_t val)
{
 struct aw_ccung_softc *sc;

 sc = device_get_softc(dev);
 dprintf("offset=%lx write %x\n", addr, val);
 CCU_WRITE4(sc, addr, val);
 return (0);
}
