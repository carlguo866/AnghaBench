
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint16_t ;
typedef int u_long ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct terasic_mtl_softc {int mtl_text_res; } ;
struct cdev {struct terasic_mtl_softc* si_drv1; } ;


 int ENODEV ;
 int bus_read_2 (int ,int) ;
 int rman_get_size (int ) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
terasic_mtl_text_read(struct cdev *dev, struct uio *uio, int flag)
{
 struct terasic_mtl_softc *sc;
 u_long offset, size;
 uint16_t v;
 int error;

 if (uio->uio_offset < 0 || uio->uio_offset % 2 != 0 ||
     uio->uio_resid % 2 != 0)
  return (ENODEV);
 sc = dev->si_drv1;
 size = rman_get_size(sc->mtl_text_res);
 error = 0;
 if ((uio->uio_offset + uio->uio_resid < 0) ||
     (uio->uio_offset + uio->uio_resid > size))
  return (ENODEV);
 while (uio->uio_resid > 0) {
  offset = uio->uio_offset;
  if (offset + sizeof(v) > size)
   return (ENODEV);
  v = bus_read_2(sc->mtl_text_res, offset);
  error = uiomove(&v, sizeof(v), uio);
  if (error)
   return (error);
 }
 return (error);
}
