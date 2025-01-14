
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfe_irqenable {int anyOutputPathIrqs; void* anyIrqForActiveStatesOnly; scalar_t__ camifEpoch1Irq; scalar_t__ camifEpoch2Irq; scalar_t__ camifSofIrq; scalar_t__ afPingpongIrq; scalar_t__ awbPingpongIrq; scalar_t__ regUpdateIrq; void* anySyncTimerIrqs; void* anyErrorIrqs; void* anyAsyncTimerIrqs; scalar_t__ asyncTimer3Irq; scalar_t__ asyncTimer2Irq; scalar_t__ asyncTimer1Irq; scalar_t__ asyncTimer0Irq; scalar_t__ syncTimer2Irq; scalar_t__ syncTimer1Irq; scalar_t__ syncTimer0Irq; void* anyOutput2PathIrqs; void* anyOutput1PathIrqs; scalar_t__ viewIrq; scalar_t__ viewCbcrPingpongIrq; scalar_t__ viewYPingpongIrq; scalar_t__ encIrq; scalar_t__ encCbcrPingpongIrq; scalar_t__ encYPingpongIrq; scalar_t__ violationIrq; scalar_t__ axiErrorIrq; scalar_t__ busOverflowIrq; scalar_t__ afOverflowIrq; scalar_t__ camifOverflowIrq; scalar_t__ camifErrorIrq; int awbOverflowIrq; int histPingpongIrq; int rdPingpongIrq; int resetAckIrq; int ceIrq; int camifEofIrq; int camifEolIrq; } ;
struct vfe_interrupt_status {int anyOutputPathIrqs; void* anyIrqForActiveStatesOnly; scalar_t__ camifEpoch1Irq; scalar_t__ camifEpoch2Irq; scalar_t__ camifSofIrq; scalar_t__ afPingpongIrq; scalar_t__ awbPingpongIrq; scalar_t__ regUpdateIrq; void* anySyncTimerIrqs; void* anyErrorIrqs; void* anyAsyncTimerIrqs; scalar_t__ asyncTimer3Irq; scalar_t__ asyncTimer2Irq; scalar_t__ asyncTimer1Irq; scalar_t__ asyncTimer0Irq; scalar_t__ syncTimer2Irq; scalar_t__ syncTimer1Irq; scalar_t__ syncTimer0Irq; void* anyOutput2PathIrqs; void* anyOutput1PathIrqs; scalar_t__ viewIrq; scalar_t__ viewCbcrPingpongIrq; scalar_t__ viewYPingpongIrq; scalar_t__ encIrq; scalar_t__ encCbcrPingpongIrq; scalar_t__ encYPingpongIrq; scalar_t__ violationIrq; scalar_t__ axiErrorIrq; scalar_t__ busOverflowIrq; scalar_t__ afOverflowIrq; scalar_t__ camifOverflowIrq; scalar_t__ camifErrorIrq; int awbOverflowIrq; int histPingpongIrq; int rdPingpongIrq; int resetAckIrq; int ceIrq; int camifEofIrq; int camifEolIrq; } ;
typedef int ret ;
typedef int hwstat ;
typedef void* boolean ;


 int memset (struct vfe_irqenable*,int ,int) ;

__attribute__((used)) static struct vfe_interrupt_status
vfe_parse_interrupt_status(uint32_t irqStatusIn)
{
 struct vfe_irqenable hwstat;
 struct vfe_interrupt_status ret;
 boolean temp;

 memset(&hwstat, 0, sizeof(hwstat));
 memset(&ret, 0, sizeof(ret));

 hwstat = *((struct vfe_irqenable *)(&irqStatusIn));

 ret.camifErrorIrq = hwstat.camifErrorIrq;
 ret.camifSofIrq = hwstat.camifSofIrq;
 ret.camifEolIrq = hwstat.camifEolIrq;
 ret.camifEofIrq = hwstat.camifEofIrq;
 ret.camifEpoch1Irq = hwstat.camifEpoch1Irq;
 ret.camifEpoch2Irq = hwstat.camifEpoch2Irq;
 ret.camifOverflowIrq = hwstat.camifOverflowIrq;
 ret.ceIrq = hwstat.ceIrq;
 ret.regUpdateIrq = hwstat.regUpdateIrq;
 ret.resetAckIrq = hwstat.resetAckIrq;
 ret.encYPingpongIrq = hwstat.encYPingpongIrq;
 ret.encCbcrPingpongIrq = hwstat.encCbcrPingpongIrq;
 ret.viewYPingpongIrq = hwstat.viewYPingpongIrq;
 ret.viewCbcrPingpongIrq = hwstat.viewCbcrPingpongIrq;
 ret.rdPingpongIrq = hwstat.rdPingpongIrq;
 ret.afPingpongIrq = hwstat.afPingpongIrq;
 ret.awbPingpongIrq = hwstat.awbPingpongIrq;
 ret.histPingpongIrq = hwstat.histPingpongIrq;
 ret.encIrq = hwstat.encIrq;
 ret.viewIrq = hwstat.viewIrq;
 ret.busOverflowIrq = hwstat.busOverflowIrq;
 ret.afOverflowIrq = hwstat.afOverflowIrq;
 ret.awbOverflowIrq = hwstat.awbOverflowIrq;
 ret.syncTimer0Irq = hwstat.syncTimer0Irq;
 ret.syncTimer1Irq = hwstat.syncTimer1Irq;
 ret.syncTimer2Irq = hwstat.syncTimer2Irq;
 ret.asyncTimer0Irq = hwstat.asyncTimer0Irq;
 ret.asyncTimer1Irq = hwstat.asyncTimer1Irq;
 ret.asyncTimer2Irq = hwstat.asyncTimer2Irq;
 ret.asyncTimer3Irq = hwstat.asyncTimer3Irq;
 ret.axiErrorIrq = hwstat.axiErrorIrq;
 ret.violationIrq = hwstat.violationIrq;





 temp =
  ret.camifErrorIrq ||
  ret.camifOverflowIrq ||
  ret.afOverflowIrq ||
  ret.awbPingpongIrq ||
  ret.busOverflowIrq ||
  ret.axiErrorIrq ||
  ret.violationIrq;

 ret.anyErrorIrqs = temp;


 temp =
  ret.encYPingpongIrq ||
  ret.encCbcrPingpongIrq ||
  ret.encIrq;

 ret.anyOutput2PathIrqs = temp;

 temp =
  ret.viewYPingpongIrq ||
  ret.viewCbcrPingpongIrq ||
  ret.viewIrq;

 ret.anyOutput1PathIrqs = temp;

 ret.anyOutputPathIrqs =
  ret.anyOutput1PathIrqs ||
  ret.anyOutput2PathIrqs;


 temp =
  ret.syncTimer0Irq ||
  ret.syncTimer1Irq ||
  ret.syncTimer2Irq;

 ret.anySyncTimerIrqs = temp;


 temp =
  ret.asyncTimer0Irq ||
  ret.asyncTimer1Irq ||
  ret.asyncTimer2Irq ||
  ret.asyncTimer3Irq;

 ret.anyAsyncTimerIrqs = temp;


 temp =
  ret.anyErrorIrqs ||
  ret.anyOutputPathIrqs ||
  ret.anySyncTimerIrqs ||
  ret.regUpdateIrq ||
  ret.awbPingpongIrq ||
  ret.afPingpongIrq ||
  ret.camifSofIrq ||
  ret.camifEpoch2Irq ||
  ret.camifEpoch1Irq;

 ret.anyIrqForActiveStatesOnly =
  temp;

 return ret;
}
