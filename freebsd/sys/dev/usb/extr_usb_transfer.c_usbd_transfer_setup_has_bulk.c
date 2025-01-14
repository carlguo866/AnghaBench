
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
struct usb_config {scalar_t__ type; } ;


 scalar_t__ UE_BULK ;
 scalar_t__ UE_BULK_INTR ;
 scalar_t__ UE_TYPE_ANY ;

__attribute__((used)) static uint8_t
usbd_transfer_setup_has_bulk(const struct usb_config *setup_start,
    uint16_t n_setup)
{
 while (n_setup--) {
  uint8_t type = setup_start[n_setup].type;
  if (type == UE_BULK || type == UE_BULK_INTR ||
      type == UE_TYPE_ANY)
   return (1);
 }
 return (0);
}
