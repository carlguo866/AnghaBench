
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk30_pmu_softc {int res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct rk30_pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct rk30_pmu_softc* rk30_pmu_sc ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
rk30_pmu_attach(device_t dev)
{
 struct rk30_pmu_softc *sc = device_get_softc(dev);
 int rid = 0;

 if (rk30_pmu_sc)
  return (ENXIO);

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->res) {
  device_printf(dev, "could not allocate resource\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);

 rk30_pmu_sc = sc;

 return (0);
}
