
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_hcd {int dummy; } ;
struct max3421_hcd {int* iopins; int spi_thread; int todo; } ;


 int IOPIN_UPDATE ;
 int MAX3421_GPOUT_COUNT ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void
max3421_gpout_set_value(struct usb_hcd *hcd, u8 pin_number, u8 value)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 u8 mask, idx;

 --pin_number;
 if (pin_number >= MAX3421_GPOUT_COUNT)
  return;

 mask = 1u << (pin_number % 4);
 idx = pin_number / 4;

 if (value)
  max3421_hcd->iopins[idx] |= mask;
 else
  max3421_hcd->iopins[idx] &= ~mask;
 set_bit(IOPIN_UPDATE, &max3421_hcd->todo);
 wake_up_process(max3421_hcd->spi_thread);
}
