
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct cesa_softc {scalar_t__ sc_soc_id; scalar_t__ sc_sram_base_va; void* sc_sram_size; void* sc_sram_base_pa; int sc_dev; } ;
typedef int sram_reg ;
typedef int sram_handle ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef scalar_t__ ihandle_t ;


 int ENOMEM ;
 scalar_t__ MV_DEV_88F6810 ;
 scalar_t__ MV_DEV_88F6820 ;
 scalar_t__ MV_DEV_88F6828 ;
 int OF_getencprop (int ,char*,void*,int) ;
 int OF_instance_to_package (scalar_t__) ;
 int ofw_bus_get_node (int ) ;
 void* pmap_mapdev (void*,void*) ;

__attribute__((used)) static int
cesa_setup_sram(struct cesa_softc *sc)
{
 phandle_t sram_node;
 ihandle_t sram_ihandle;
 pcell_t sram_handle, sram_reg[2];
 void *sram_va;
 int rv;

 rv = OF_getencprop(ofw_bus_get_node(sc->sc_dev), "sram-handle",
     (void *)&sram_handle, sizeof(sram_handle));
 if (rv <= 0)
  return (rv);

 sram_ihandle = (ihandle_t)sram_handle;
 sram_node = OF_instance_to_package(sram_ihandle);

 rv = OF_getencprop(sram_node, "reg", (void *)sram_reg, sizeof(sram_reg));
 if (rv <= 0)
  return (rv);

 sc->sc_sram_base_pa = sram_reg[0];

 sc->sc_sram_size = sram_reg[1];

 if (sc->sc_soc_id != MV_DEV_88F6828 &&
     sc->sc_soc_id != MV_DEV_88F6820 &&
     sc->sc_soc_id != MV_DEV_88F6810)
  return (0);


 sram_va = pmap_mapdev(sc->sc_sram_base_pa, sc->sc_sram_size);
 if (sram_va == ((void*)0))
  return (ENOMEM);
 sc->sc_sram_base_va = (vm_offset_t)sram_va;

 return (0);
}
