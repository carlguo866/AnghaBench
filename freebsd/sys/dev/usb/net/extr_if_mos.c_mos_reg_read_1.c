
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uByte ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct mos_softc {int sc_ue; } ;


 int MOS_DPRINTFN (char*,int) ;
 int MOS_UR_READREG ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int*,int) ;

__attribute__((used)) static int
mos_reg_read_1(struct mos_softc *sc, int reg)
{
 struct usb_device_request req;
 usb_error_t err;
 uByte val = 0;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = MOS_UR_READREG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 1);

 err = uether_do_request(&sc->sc_ue, &req, &val, 1000);

 if (err) {
  MOS_DPRINTFN("mos_reg_read_1 error, reg: %d\n", reg);
  return (-1);
 }
 return (val);
}
