
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;

__attribute__((used)) static inline irqreturn_t musb_g_ep0_irq(struct musb *m) { return IRQ_NONE; }
