
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct iforce {int pkt; unsigned char id; unsigned char len; int idx; unsigned char* data; scalar_t__ csum; } ;
typedef int irqreturn_t ;


 unsigned char IFORCE_MAX_LENGTH ;
 int IRQ_HANDLED ;
 int iforce_process_packet (struct iforce*,int,unsigned char*) ;
 struct iforce* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t iforce_serio_irq(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct iforce *iforce = serio_get_drvdata(serio);

 if (!iforce->pkt) {
  if (data == 0x2b)
   iforce->pkt = 1;
  goto out;
 }

 if (!iforce->id) {
  if (data > 3 && data != 0xff)
   iforce->pkt = 0;
  else
   iforce->id = data;
  goto out;
 }

 if (!iforce->len) {
  if (data > IFORCE_MAX_LENGTH) {
   iforce->pkt = 0;
   iforce->id = 0;
  } else {
   iforce->len = data;
  }
  goto out;
 }

 if (iforce->idx < iforce->len) {
  iforce->csum += iforce->data[iforce->idx++] = data;
  goto out;
 }

 if (iforce->idx == iforce->len) {
  iforce_process_packet(iforce, (iforce->id << 8) | iforce->idx, iforce->data);
  iforce->pkt = 0;
  iforce->id = 0;
  iforce->len = 0;
  iforce->idx = 0;
  iforce->csum = 0;
 }
out:
 return IRQ_HANDLED;
}
