
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_loopbacks; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int waveform_ao_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int i, chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++)
  devpriv->ao_loopbacks[chan] = data[i];

 return insn->n;
}
