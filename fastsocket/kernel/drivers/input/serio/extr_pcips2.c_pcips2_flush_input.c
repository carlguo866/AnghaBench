
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcips2_data {scalar_t__ base; } ;


 scalar_t__ PS2_DATA ;
 scalar_t__ PS2_STATUS ;
 unsigned char PS2_STAT_RXFULL ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static void pcips2_flush_input(struct pcips2_data *ps2if)
{
 unsigned char status, scancode;

 do {
  status = inb(ps2if->base + PS2_STATUS);
  if (!(status & PS2_STAT_RXFULL))
   break;
  scancode = inb(ps2if->base + PS2_DATA);
  if (status == 0xff && scancode == 0xff)
   break;
 } while (1);
}
