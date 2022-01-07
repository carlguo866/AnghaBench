
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_qcom {scalar_t__ ss_phy_irq; scalar_t__ dm_hs_phy_irq; scalar_t__ dp_hs_phy_irq; scalar_t__ hs_phy_irq; } ;


 int enable_irq (scalar_t__) ;
 int enable_irq_wake (scalar_t__) ;

__attribute__((used)) static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
{
 if (qcom->hs_phy_irq) {
  enable_irq(qcom->hs_phy_irq);
  enable_irq_wake(qcom->hs_phy_irq);
 }

 if (qcom->dp_hs_phy_irq) {
  enable_irq(qcom->dp_hs_phy_irq);
  enable_irq_wake(qcom->dp_hs_phy_irq);
 }

 if (qcom->dm_hs_phy_irq) {
  enable_irq(qcom->dm_hs_phy_irq);
  enable_irq_wake(qcom->dm_hs_phy_irq);
 }

 if (qcom->ss_phy_irq) {
  enable_irq(qcom->ss_phy_irq);
  enable_irq_wake(qcom->ss_phy_irq);
 }
}
