
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int QT2_GET_SET_UART ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned short,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_conf_uart(struct usb_serial *serial, unsigned short Uart_Number,
        unsigned short divisor, unsigned char LCR)
{
 int result;
 unsigned short UartNumandLCR;

 UartNumandLCR = (LCR << 8) + Uart_Number;

 result = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
    QT2_GET_SET_UART, 0x40, divisor, UartNumandLCR,
    ((void*)0), 0, 300);
 return result;
}
