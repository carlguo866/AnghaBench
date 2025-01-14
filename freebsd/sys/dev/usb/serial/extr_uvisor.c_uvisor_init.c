
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wAvail ;
typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int uWord ;
struct uvisor_softc {int sc_flag; } ;
struct uvisor_palm_connection_info {int num_ports; TYPE_1__* connections; scalar_t__ endpoint_numbers_different; } ;
struct uvisor_connection_info {int num_ports; TYPE_1__* connections; scalar_t__ endpoint_numbers_different; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; void* bRequest; void* bmRequestType; } ;
struct usb_device {int dummy; } ;
struct usb_config {int endpoint; } ;
struct TYPE_2__ {int port_function_id; int port; int end_point_info; } ;


 int DPRINTF (char*,...) ;
 scalar_t__ UGETW (int) ;
 void* UR_GET_CONFIG ;
 void* UR_GET_INTERFACE ;
 int USB_DEFAULT_TIMEOUT ;
 scalar_t__ USB_ERR_INVAL ;
 int USB_SHORT_XFER_OK ;
 int USETW (int ,int) ;
 void* UT_READ ;
 void* UT_READ_DEVICE ;
 void* UT_READ_VENDOR_ENDPOINT ;
 int UVISOR_CONNECTION_INFO_SIZE ;
 int UVISOR_FLAG_PALM35 ;
 int UVISOR_FLAG_PALM4 ;
 int UVISOR_FLAG_VISOR ;




 void* UVISOR_GET_CONNECTION_INFORMATION ;
 void* UVISOR_GET_PALM_INFORMATION ;
 int UVISOR_GET_PALM_INFORMATION_LEN ;
 scalar_t__ UVISOR_MAX_CONN ;
 void* UVISOR_REQUEST_BYTES_AVAILABLE ;
 scalar_t__ usbd_do_request (struct usb_device*,struct usb_device_request*,...) ;
 scalar_t__ usbd_do_request_flags (struct usb_device*,int *,struct usb_device_request*,struct uvisor_palm_connection_info*,int ,scalar_t__*,int ) ;

__attribute__((used)) static usb_error_t
uvisor_init(struct uvisor_softc *sc, struct usb_device *udev, struct usb_config *config)
{
 usb_error_t err = 0;
 struct usb_device_request req;
 struct uvisor_connection_info coninfo;
 struct uvisor_palm_connection_info pconinfo;
 uint16_t actlen;
 uint8_t buffer[256];

 if (sc->sc_flag & UVISOR_FLAG_VISOR) {
  DPRINTF("getting connection info\n");
  req.bmRequestType = UT_READ_VENDOR_ENDPOINT;
  req.bRequest = UVISOR_GET_CONNECTION_INFORMATION;
  USETW(req.wValue, 0);
  USETW(req.wIndex, 0);
  USETW(req.wLength, UVISOR_CONNECTION_INFO_SIZE);
  err = usbd_do_request_flags(udev, ((void*)0),
      &req, &coninfo, USB_SHORT_XFER_OK,
      &actlen, USB_DEFAULT_TIMEOUT);

  if (err) {
   goto done;
  }
 }
 if (sc->sc_flag & UVISOR_FLAG_PALM4) {
  uint8_t port;


  req.bmRequestType = UT_READ_VENDOR_ENDPOINT;
  req.bRequest = UVISOR_GET_PALM_INFORMATION;
  USETW(req.wValue, 0);
  USETW(req.wIndex, 0);
  USETW(req.wLength, UVISOR_GET_PALM_INFORMATION_LEN);

  err = usbd_do_request_flags
      (udev, ((void*)0), &req, &pconinfo, USB_SHORT_XFER_OK,
      &actlen, USB_DEFAULT_TIMEOUT);

  if (err) {
   goto done;
  }
  if (actlen < 12) {
   DPRINTF("too little data\n");
   err = USB_ERR_INVAL;
   goto done;
  }
  if (pconinfo.endpoint_numbers_different) {
   port = pconinfo.connections[0].end_point_info;
   config[0].endpoint = (port & 0xF);
   config[1].endpoint = (port >> 4);
  } else {
   port = pconinfo.connections[0].port;
   config[0].endpoint = (port & 0xF);
   config[1].endpoint = (port & 0xF);
  }
 }
 if (sc->sc_flag & UVISOR_FLAG_PALM35) {

  DPRINTF("getting config info\n");
  req.bmRequestType = UT_READ;
  req.bRequest = UR_GET_CONFIG;
  USETW(req.wValue, 0);
  USETW(req.wIndex, 0);
  USETW(req.wLength, 1);

  err = usbd_do_request(udev, ((void*)0), &req, buffer);
  if (err) {
   goto done;
  }

  DPRINTF("get the interface number\n");
  req.bmRequestType = UT_READ_DEVICE;
  req.bRequest = UR_GET_INTERFACE;
  USETW(req.wValue, 0);
  USETW(req.wIndex, 0);
  USETW(req.wLength, 1);
  err = usbd_do_request(udev, ((void*)0), &req, buffer);
  if (err) {
   goto done;
  }
 }
 DPRINTF("done\n");
done:
 return (err);
}
