
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Handle ;
struct fman_softc {int muram_handle; } ;
typedef int device_t ;


 struct fman_softc* device_get_softc (int ) ;

int
fman_get_muram_handle(device_t dev, t_Handle *muramh)
{
 struct fman_softc *sc = device_get_softc(dev);

 *muramh = sc->muram_handle;

 return (0);
}
