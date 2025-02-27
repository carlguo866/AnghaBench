
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int * ue_methods; int * ue_mtx; int ue_udev; int ue_dev; struct kue_softc* ue_sc; } ;
struct usb_attach_arg {int device; } ;
struct kue_softc {int sc_mtx; int * sc_mcfilters; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int KUE_IFACE_IDX ;
 int KUE_MCFILTCNT (struct kue_softc*) ;
 int KUE_N_TRANSFER ;
 int MTX_DEF ;
 int M_USBDEV ;
 int M_WAITOK ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct kue_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_usb_desc (int ) ;
 int kue_config ;
 int kue_detach (int ) ;
 int kue_ue_methods ;
 int * malloc (int,int ,int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int uether_ifattach (struct usb_ether*) ;
 int usbd_transfer_setup (int ,int *,int ,int ,int ,struct kue_softc*,int *) ;

__attribute__((used)) static int
kue_attach(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct kue_softc *sc = device_get_softc(dev);
 struct usb_ether *ue = &sc->sc_ue;
 uint8_t iface_index;
 int error;

 device_set_usb_desc(dev);
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 iface_index = KUE_IFACE_IDX;
 error = usbd_transfer_setup(uaa->device, &iface_index,
     sc->sc_xfer, kue_config, KUE_N_TRANSFER, sc, &sc->sc_mtx);
 if (error) {
  device_printf(dev, "allocating USB transfers failed\n");
  goto detach;
 }

 sc->sc_mcfilters = malloc(KUE_MCFILTCNT(sc) * ETHER_ADDR_LEN,
     M_USBDEV, M_WAITOK);
 if (sc->sc_mcfilters == ((void*)0)) {
  device_printf(dev, "failed allocating USB memory\n");
  goto detach;
 }

 ue->ue_sc = sc;
 ue->ue_dev = dev;
 ue->ue_udev = uaa->device;
 ue->ue_mtx = &sc->sc_mtx;
 ue->ue_methods = &kue_ue_methods;

 error = uether_ifattach(ue);
 if (error) {
  device_printf(dev, "could not attach interface\n");
  goto detach;
 }
 return (0);

detach:
 kue_detach(dev);
 return (ENXIO);
}
