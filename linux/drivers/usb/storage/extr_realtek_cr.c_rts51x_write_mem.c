
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct us_data {int dummy; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int kfree (int*) ;
 int* kmemdup (int*,int,int ) ;
 int rts51x_bulk_transport (struct us_data*,int ,int*,int,int*,int,int ,int *) ;
 int usb_stor_dbg (struct us_data*,char*,int,int) ;

__attribute__((used)) static int rts51x_write_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
{
 int retval;
 u8 cmnd[12] = { 0 };
 u8 *buf;

 buf = kmemdup(data, len, GFP_NOIO);
 if (buf == ((void*)0))
  return USB_STOR_TRANSPORT_ERROR;

 usb_stor_dbg(us, "addr = 0x%x, len = %d\n", addr, len);

 cmnd[0] = 0xF0;
 cmnd[1] = 0x0E;
 cmnd[2] = (u8) (addr >> 8);
 cmnd[3] = (u8) addr;
 cmnd[4] = (u8) (len >> 8);
 cmnd[5] = (u8) len;

 retval = rts51x_bulk_transport(us, 0, cmnd, 12,
           buf, len, DMA_TO_DEVICE, ((void*)0));
 kfree(buf);
 if (retval != USB_STOR_TRANSPORT_GOOD)
  return -EIO;

 return 0;
}
