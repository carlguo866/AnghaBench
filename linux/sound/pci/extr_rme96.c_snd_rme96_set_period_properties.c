
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {scalar_t__ iobase; int wcreg; } ;


 scalar_t__ RME96_IO_CONTROL_REGISTER ;


 int RME96_WCR_IDIS ;
 int RME96_WCR_ISEL ;
 int snd_BUG () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
snd_rme96_set_period_properties(struct rme96 *rme96,
    size_t period_bytes)
{
 switch (period_bytes) {
 case 129:
  rme96->wcreg &= ~RME96_WCR_ISEL;
  break;
 case 128:
  rme96->wcreg |= RME96_WCR_ISEL;
  break;
 default:
  snd_BUG();
  break;
 }
 rme96->wcreg &= ~RME96_WCR_IDIS;
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}
