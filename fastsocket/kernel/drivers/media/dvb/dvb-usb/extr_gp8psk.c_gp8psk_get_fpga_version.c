
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int GET_FPGA_VERS ;
 int gp8psk_usb_in_op (struct dvb_usb_device*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int gp8psk_get_fpga_version(struct dvb_usb_device *d, u8 *fpga_vers)
{
 return (gp8psk_usb_in_op(d, GET_FPGA_VERS, 0, 0, fpga_vers, 1));
}
