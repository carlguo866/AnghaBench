
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct ps3disk_softc {int sc_nregs; TYPE_1__* sc_reg; int sc_dev; } ;
struct ps3disk_region {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int r_id; int r_start; int r_size; int r_flags; } ;


 int ENOMEM ;
 int ENXIO ;
 int M_PS3DISK ;
 int M_WAITOK ;
 int M_ZERO ;
 int PS3_LPAR_ID_PME ;
 int device_printf (int ,char*,int) ;
 int free (TYPE_1__*,int ) ;
 int lv1_get_repository_node_value (int ,int,int,int,int,int*,int*) ;
 int lv1_repository_string (char*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ps3bus_get_busidx (int ) ;
 int ps3bus_get_devidx (int ) ;

__attribute__((used)) static int
ps3disk_enum_regions(struct ps3disk_softc *sc)
{
 device_t dev = sc->sc_dev;
 uint64_t bus_index = ps3bus_get_busidx(dev);
 uint64_t dev_index = ps3bus_get_devidx(dev);
 uint64_t junk;
 int i, err;



 err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
     (lv1_repository_string("bus") >> 32) | bus_index,
     lv1_repository_string("dev") | dev_index,
     lv1_repository_string("n_regs"), 0, &sc->sc_nregs, &junk);
 if (err) {
  device_printf(dev, "Could not get number of regions (0x%08x)\n",
      err);
  err = ENXIO;
  goto fail;
 }

 if (!sc->sc_nregs)
  return 0;

 sc->sc_reg = malloc(sc->sc_nregs * sizeof(struct ps3disk_region),
     M_PS3DISK, M_ZERO | M_WAITOK);
 if (!sc->sc_reg) {
  err = ENOMEM;
  goto fail;
 }



 for (i = 0; i < sc->sc_nregs; i++) {
  err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("region") | i,
      lv1_repository_string("id"), &sc->sc_reg[i].r_id, &junk);
  if (err) {
   device_printf(dev, "Could not get region id (0x%08x)\n",
       err);
   err = ENXIO;
   goto fail;
  }

  err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("region") | i,
      lv1_repository_string("start"), &sc->sc_reg[i].r_start,
      &junk);
  if (err) {
   device_printf(dev, "Could not get region start "
       "(0x%08x)\n", err);
   err = ENXIO;
   goto fail;
  }

  err = lv1_get_repository_node_value(PS3_LPAR_ID_PME,
      (lv1_repository_string("bus") >> 32) | bus_index,
      lv1_repository_string("dev") | dev_index,
      lv1_repository_string("region") | i,
      lv1_repository_string("size"), &sc->sc_reg[i].r_size,
      &junk);
  if (err) {
   device_printf(dev, "Could not get region size "
       "(0x%08x)\n", err);
   err = ENXIO;
   goto fail;
  }

  if (i == 0)
   sc->sc_reg[i].r_flags = 0x2;
  else
   sc->sc_reg[i].r_flags = 0;
 }

 return (0);

fail:

 sc->sc_nregs = 0;
 if (sc->sc_reg)
  free(sc->sc_reg, M_PS3DISK);

 return (err);
}
