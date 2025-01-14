
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* rm_type; } ;
struct mv_pcib_softc {TYPE_1__ sc_io_rman; TYPE_1__ sc_mem_rman; scalar_t__ sc_io_size; scalar_t__ sc_io_base; scalar_t__ sc_mem_size; scalar_t__ sc_mem_base; } ;


 void* RMAN_ARRAY ;
 int rman_fini (TYPE_1__*) ;
 int rman_init (TYPE_1__*) ;
 int rman_manage_region (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
mv_pcib_mem_init(struct mv_pcib_softc *sc)
{
 int err;




 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 err = rman_init(&sc->sc_mem_rman);
 if (err)
  return (err);

 sc->sc_io_rman.rm_type = RMAN_ARRAY;
 err = rman_init(&sc->sc_io_rman);
 if (err) {
  rman_fini(&sc->sc_mem_rman);
  return (err);
 }

 err = rman_manage_region(&sc->sc_mem_rman, sc->sc_mem_base,
     sc->sc_mem_base + sc->sc_mem_size - 1);
 if (err)
  goto error;

 err = rman_manage_region(&sc->sc_io_rman, sc->sc_io_base,
     sc->sc_io_base + sc->sc_io_size - 1);
 if (err)
  goto error;

 return (0);

error:
 rman_fini(&sc->sc_mem_rman);
 rman_fini(&sc->sc_io_rman);

 return (err);
}
