
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void usb6fire_comm_init_buffer(u8 *buffer, u8 id, u8 request,
  u8 reg, u8 vl, u8 vh)
{
 buffer[0] = 0x01;
 buffer[2] = request;
 buffer[3] = id;
 switch (request) {
 case 0x02:
  buffer[1] = 0x05;
  buffer[4] = reg;
  buffer[5] = vl;
  buffer[6] = vh;
  break;

 case 0x12:
  buffer[1] = 0x0b;
  buffer[4] = 0x00;
  buffer[5] = 0x18;
  buffer[6] = 0x05;
  buffer[7] = 0x00;
  buffer[8] = 0x01;
  buffer[9] = 0x00;
  buffer[10] = 0x9e;
  buffer[11] = reg;
  buffer[12] = vl;
  break;

 case 0x20:
 case 0x21:
 case 0x22:
  buffer[1] = 0x04;
  buffer[4] = reg;
  buffer[5] = vl;
  break;
 }
}
