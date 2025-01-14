
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct file {int dummy; } ;
struct dvb_ringbuffer {int dummy; } ;
struct ca_slot_info {scalar_t__ flags; } ;


 int EBUSY ;
 int dvb_ringbuffer_free (struct dvb_ringbuffer*) ;
 int dvb_ringbuffer_write (struct dvb_ringbuffer*,int*,int) ;

__attribute__((used)) static int ci_ll_reset(struct dvb_ringbuffer *cibuf, struct file *file,
         int slots, struct ca_slot_info *slot)
{
 int i;
 int len = 0;
 u8 msg[8] = { 0x00, 0x06, 0x00, 0x00, 0xff, 0x02, 0x00, 0x00 };

 for (i = 0; i < 2; i++) {
  if (slots & (1 << i))
   len += 8;
 }

 if (dvb_ringbuffer_free(cibuf) < len)
  return -EBUSY;

 for (i = 0; i < 2; i++) {
  if (slots & (1 << i)) {
   msg[2] = i;
   dvb_ringbuffer_write(cibuf, msg, 8);
   slot[i].flags = 0;
  }
 }

 return 0;
}
