
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int QT_GET_SET_REGISTER ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned short,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxSetRegister(struct usb_serial *serial, unsigned short Uart_Number,
     unsigned short Register_Num, unsigned short Value)
{
 int result;
 unsigned short RegAndByte;

 RegAndByte = Value;
 RegAndByte = RegAndByte << 8;
 RegAndByte = RegAndByte + Register_Num;







 result =
     usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       QT_GET_SET_REGISTER, 0x40, RegAndByte, Uart_Number,
       ((void*)0), 0, 300);

 return result;
}
