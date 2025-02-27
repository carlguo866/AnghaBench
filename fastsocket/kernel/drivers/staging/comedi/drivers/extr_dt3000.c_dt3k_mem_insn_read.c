
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 int CMD_READCODE ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ DPR_Params (int) ;
 scalar_t__ DPR_SubSys ;
 int SUBS_MEM ;
 TYPE_1__* devpriv ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 unsigned int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int dt3k_mem_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 unsigned int addr = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  writew(SUBS_MEM, devpriv->io_addr + DPR_SubSys);
  writew(addr, devpriv->io_addr + DPR_Params(0));
  writew(1, devpriv->io_addr + DPR_Params(1));

  dt3k_send_cmd(dev, CMD_READCODE);

  data[i] = readw(devpriv->io_addr + DPR_Params(2));
 }

 return i;
}
