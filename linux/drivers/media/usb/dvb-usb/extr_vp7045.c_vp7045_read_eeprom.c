
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int GET_EE_VALUE ;
 int deb_info (char*,int,int) ;
 int debug_dump (int*,int,int (*) (char*,int,int)) ;
 int vp7045_usb_op (struct dvb_usb_device*,int ,int*,int,int*,int,int) ;

__attribute__((used)) static int vp7045_read_eeprom(struct dvb_usb_device *d,u8 *buf, int len, int offset)
{
 int i = 0;
 u8 v,br[2];
 for (i=0; i < len; i++) {
  v = offset + i;
  vp7045_usb_op(d,GET_EE_VALUE,&v,1,br,2,5);
  buf[i] = br[1];
 }
 deb_info("VP7045 EEPROM read (offs: %d, len: %d) : ",offset, i);
 debug_dump(buf,i,deb_info);
 return 0;
}
