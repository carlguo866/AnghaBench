
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int b_TimerSelectMode; scalar_t__ iobase; int tsk_Current; } ;


 unsigned int ADDIDATA_TIMER ;
 unsigned int ADDIDATA_WATCHDOG ;
 scalar_t__ APCI3501_TCW_PROG ;
 scalar_t__ APCI3501_TCW_RELOAD_VALUE ;
 scalar_t__ APCI3501_TCW_TIMEBASE ;
 scalar_t__ APCI3501_WATCHDOG ;
 int current ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI3501_ConfigTimerCounterWatchdog(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 unsigned int ul_Command1 = 0;
 devpriv->tsk_Current = current;
 if (data[0] == ADDIDATA_WATCHDOG) {

  devpriv->b_TimerSelectMode = ADDIDATA_WATCHDOG;

  outl(0x0, devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

  if (data[1] == 1) {

   outl(0x02,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  } else {
   outl(0x0, devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
  }


  outl(data[2],
   devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_TIMEBASE);


  outl(data[3],
   devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_RELOAD_VALUE);

  ul_Command1 = inl(devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG) | 0xFFF819E0UL;
  outl(ul_Command1,
   devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_PROG);
 }

 else if (data[0] == ADDIDATA_TIMER) {

  ul_Command1 =
   inl(devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_PROG);
  ul_Command1 = ul_Command1 & 0xFFFFF9FEUL;
  outl(ul_Command1, devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
  devpriv->b_TimerSelectMode = ADDIDATA_TIMER;
  if (data[1] == 1) {

   outl(0x02,
    devpriv->iobase + APCI3501_WATCHDOG +
    APCI3501_TCW_PROG);
  } else {
   outl(0x0, devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
  }


  outl(data[2],
   devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_TIMEBASE);


  outl(data[3],
   devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_RELOAD_VALUE);


  ul_Command1 =
   inl(devpriv->iobase + APCI3501_WATCHDOG +
   APCI3501_TCW_PROG);
  ul_Command1 =
   (ul_Command1 & 0xFFF719E2UL) | 2UL << 13UL | 0x10UL;
  outl(ul_Command1, devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

 }

 return insn->n;
}
