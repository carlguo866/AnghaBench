
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sbni_softc {int io_off; int io_res; } ;
typedef enum sbni_reg { ____Placeholder_sbni_reg } sbni_reg ;


 int bus_space_read_1 (int ,int ,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static __inline u_char
sbni_inb(struct sbni_softc *sc, enum sbni_reg reg)
{
 return bus_space_read_1(
     rman_get_bustag(sc->io_res),
     rman_get_bushandle(sc->io_res),
     sc->io_off + reg);
}
