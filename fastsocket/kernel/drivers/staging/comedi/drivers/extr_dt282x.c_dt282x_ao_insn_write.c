
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int dabits; } ;
struct TYPE_3__ {short* ao; scalar_t__ da1_2scomp; int dacsr; scalar_t__ da0_2scomp; } ;


 unsigned int CR_CHAN (int ) ;
 int DT2821_DACON ;
 scalar_t__ DT2821_DADAT ;
 int DT2821_SSEL ;
 int DT2821_YSEL ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int outw (short,scalar_t__) ;
 int update_dacsr (int ) ;
 int update_supcsr (int ) ;

__attribute__((used)) static int dt282x_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 short d;
 unsigned int chan;

 chan = CR_CHAN(insn->chanspec);
 d = data[0];
 d &= (1 << boardtype.dabits) - 1;
 devpriv->ao[chan] = d;

 devpriv->dacsr |= DT2821_SSEL;

 if (chan) {

  devpriv->dacsr |= DT2821_YSEL;
  if (devpriv->da0_2scomp)
   d ^= (1 << (boardtype.dabits - 1));
 } else {
  devpriv->dacsr &= ~DT2821_YSEL;
  if (devpriv->da1_2scomp)
   d ^= (1 << (boardtype.dabits - 1));
 }

 update_dacsr(0);

 outw(d, dev->iobase + DT2821_DADAT);

 update_supcsr(DT2821_DACON);

 return 1;
}
