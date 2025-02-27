
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_chipid {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
struct bhndb_softc {int services; int * bus_res; int dev; int parent_dev; int * bus_dev; struct bhnd_chipid chipid; struct bhnd_core_info bridge_core; } ;
struct bhndb_hwcfg {int dummy; } ;
struct bhndb_hw_priority {int dummy; } ;
struct bhndb_hw {int name; struct bhndb_hwcfg* cfg; } ;
struct bhndb_devinfo {int addrspace; } ;
struct bhnd_erom_io {int dummy; } ;
typedef int device_t ;
typedef int bhnd_erom_t ;
typedef int bhnd_erom_class_t ;


 int BHNDB_ADDRSPACE_BRIDGED ;
 struct bhndb_hwcfg* BHNDB_BUS_GET_GENERIC_HWCFG (int ,int ) ;
 struct bhndb_hw_priority* BHNDB_BUS_GET_HARDWARE_PRIO (int ,int ) ;
 scalar_t__ BHNDB_DEBUG (int ) ;
 int BHNDB_LOCK_DESTROY (struct bhndb_softc*) ;
 int BHNDB_LOCK_INIT (struct bhndb_softc*) ;
 int BHND_PROBE_BUS ;
 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int ENOMEM ;
 int ENXIO ;
 int PRIO ;
 int * bhnd_erom_alloc (int *,struct bhnd_chipid*,struct bhnd_erom_io*) ;
 int bhnd_erom_free (int *) ;
 int bhnd_erom_io_fini (struct bhnd_erom_io*) ;
 struct bhnd_erom_io* bhnd_erom_iores_new (int *,int ) ;
 int bhnd_service_registry_fini (int *) ;
 int bhnd_service_registry_init (int *) ;
 int * bhndb_alloc_resources (int ,int ,struct bhndb_hwcfg const*) ;
 int bhndb_find_hwspec (struct bhndb_softc*,struct bhnd_core_info*,int ,struct bhndb_hw const**) ;
 int bhndb_free_resources (int *) ;
 int bhndb_init_region_cfg (struct bhndb_softc*,int *,int *,struct bhnd_core_info*,int ,struct bhndb_hw_priority const*) ;
 scalar_t__ bootverbose ;
 struct bhndb_devinfo* device_get_ivars (int *) ;
 int device_get_parent (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

int
bhndb_attach(device_t dev, struct bhnd_chipid *cid,
    struct bhnd_core_info *cores, u_int ncores,
    struct bhnd_core_info *bridge_core, bhnd_erom_class_t *erom_class)
{
 struct bhndb_devinfo *dinfo;
 struct bhndb_softc *sc;
 const struct bhndb_hw *hw;
 const struct bhndb_hwcfg *hwcfg;
 const struct bhndb_hw_priority *hwprio;
 struct bhnd_erom_io *eio;
 bhnd_erom_t *erom;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->parent_dev = device_get_parent(dev);
 sc->bridge_core = *bridge_core;
 sc->chipid = *cid;

 if ((error = bhnd_service_registry_init(&sc->services)))
  return (error);

 BHNDB_LOCK_INIT(sc);

 erom = ((void*)0);


 if ((error = bhndb_find_hwspec(sc, cores, ncores, &hw))) {
  device_printf(sc->dev, "unable to identify device, "
      " using generic bridge resource definitions\n");

  hwcfg = BHNDB_BUS_GET_GENERIC_HWCFG(sc->parent_dev, dev);
  hw = ((void*)0);
 } else {
  hwcfg = hw->cfg;
 }

 if (hw != ((void*)0) && (bootverbose || BHNDB_DEBUG(PRIO))) {
  device_printf(sc->dev, "%s resource configuration\n", hw->name);
 }



 sc->bus_res = bhndb_alloc_resources(sc->dev, sc->parent_dev, hwcfg);
 if (sc->bus_res == ((void*)0)) {
  device_printf(sc->dev, "failed to allocate bridge resource "
      "state\n");
  error = ENOMEM;
  goto failed;
 }


 sc->bus_dev = BUS_ADD_CHILD(dev, BHND_PROBE_BUS, "bhnd", -1);
 if (sc->bus_dev == ((void*)0)) {
  error = ENXIO;
  goto failed;
 }

 dinfo = device_get_ivars(sc->bus_dev);
 dinfo->addrspace = BHNDB_ADDRSPACE_BRIDGED;



 eio = bhnd_erom_iores_new(sc->bus_dev, 0);
 if ((erom = bhnd_erom_alloc(erom_class, cid, eio)) == ((void*)0)) {
  bhnd_erom_io_fini(eio);
  error = ENXIO;
  goto failed;
 }


 hwprio = BHNDB_BUS_GET_HARDWARE_PRIO(sc->parent_dev, sc->dev);
 error = bhndb_init_region_cfg(sc, erom, sc->bus_res, cores, ncores,
     hwprio);
 if (error) {
  device_printf(sc->dev, "failed to initialize resource "
      "priority configuration: %d\n", error);
  goto failed;
 }


 bhnd_erom_free(erom);
 erom = ((void*)0);

 return (0);

failed:
 BHNDB_LOCK_DESTROY(sc);

 if (sc->bus_res != ((void*)0))
  bhndb_free_resources(sc->bus_res);

 if (erom != ((void*)0))
  bhnd_erom_free(erom);

 bhnd_service_registry_fini(&sc->services);

 return (error);
}
