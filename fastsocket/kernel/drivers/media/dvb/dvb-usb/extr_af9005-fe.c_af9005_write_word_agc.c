
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9005_write_ofdm_register (struct dvb_usb_device*,int,scalar_t__) ;
 int af9005_write_register_bits (struct dvb_usb_device*,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int af9005_write_word_agc(struct dvb_usb_device *d, u16 reghi,
     u16 reglo, u8 pos, u8 len, u16 value)
{
 int ret;
 u8 temp;

 if ((ret = af9005_write_ofdm_register(d, reglo, (u8) (value & 0xff))))
  return ret;
 temp = (u8) ((value & 0x0300) >> 8);
 return af9005_write_register_bits(d, reghi, pos, len,
       (u8) ((value & 0x300) >> 8));
}
