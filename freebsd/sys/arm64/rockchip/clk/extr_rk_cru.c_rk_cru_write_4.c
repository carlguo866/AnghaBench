
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_cru_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CCU_WRITE4 (struct rk_cru_softc*,int ,int ) ;
 struct rk_cru_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk_cru_write_4(device_t dev, bus_addr_t addr, uint32_t val)
{
 struct rk_cru_softc *sc;

 sc = device_get_softc(dev);
 CCU_WRITE4(sc, addr, val);
 return (0);
}
