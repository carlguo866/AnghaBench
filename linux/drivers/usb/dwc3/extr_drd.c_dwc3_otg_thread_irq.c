
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int lock; scalar_t__ otg_restart_host; } ;
typedef int irqreturn_t ;


 int DWC3_GCTL_PRTCAP_OTG ;
 int IRQ_HANDLED ;
 int dwc3_otg_host_init (struct dwc3*) ;
 int dwc3_set_mode (struct dwc3*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t dwc3_otg_thread_irq(int irq, void *_dwc)
{
 struct dwc3 *dwc = _dwc;

 spin_lock(&dwc->lock);
 if (dwc->otg_restart_host) {
  dwc3_otg_host_init(dwc);
  dwc->otg_restart_host = 0;
 }

 spin_unlock(&dwc->lock);

 dwc3_set_mode(dwc, DWC3_GCTL_PRTCAP_OTG);

 return IRQ_HANDLED;
}
