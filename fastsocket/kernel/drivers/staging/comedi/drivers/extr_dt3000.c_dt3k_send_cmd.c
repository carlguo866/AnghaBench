
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 scalar_t__ DPR_Command_Mbx ;
 unsigned int DT3000_COMPLETION_MASK ;
 unsigned int DT3000_NOERROR ;
 unsigned int DT3000_NOTPROCESSED ;
 int ETIME ;
 int TIMEOUT ;
 TYPE_1__* devpriv ;
 int printk (char*,unsigned int) ;
 unsigned int readw (scalar_t__) ;
 int udelay (int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt3k_send_cmd(struct comedi_device *dev, unsigned int cmd)
{
 int i;
 unsigned int status = 0;

 writew(cmd, devpriv->io_addr + DPR_Command_Mbx);

 for (i = 0; i < TIMEOUT; i++) {
  status = readw(devpriv->io_addr + DPR_Command_Mbx);
  if ((status & DT3000_COMPLETION_MASK) != DT3000_NOTPROCESSED)
   break;
  udelay(1);
 }
 if ((status & DT3000_COMPLETION_MASK) == DT3000_NOERROR) {
  return 0;
 }

 printk("dt3k_send_cmd() timeout/error status=0x%04x\n", status);

 return -ETIME;
}
