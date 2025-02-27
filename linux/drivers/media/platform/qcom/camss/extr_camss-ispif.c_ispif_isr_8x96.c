
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ispif_device {int reset_complete; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ ISPIF_IRQ_GLOBAL_CLEAR_CMD ;
 scalar_t__ ISPIF_VFE_m_IRQ_CLEAR_0 (int) ;
 scalar_t__ ISPIF_VFE_m_IRQ_CLEAR_1 (int) ;
 scalar_t__ ISPIF_VFE_m_IRQ_CLEAR_2 (int) ;
 scalar_t__ ISPIF_VFE_m_IRQ_STATUS_0 (int) ;
 int ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW ;
 int ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW ;
 scalar_t__ ISPIF_VFE_m_IRQ_STATUS_1 (int) ;
 int ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW ;
 int ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW ;
 scalar_t__ ISPIF_VFE_m_IRQ_STATUS_2 (int) ;
 int ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW ;
 int complete (int *) ;
 int dev_err_ratelimited (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 int to_device (struct ispif_device*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ispif_isr_8x96(int irq, void *dev)
{
 struct ispif_device *ispif = dev;
 u32 value0, value1, value2, value3, value4, value5;

 value0 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_0(0));
 value1 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_1(0));
 value2 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_2(0));
 value3 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_0(1));
 value4 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_1(1));
 value5 = readl_relaxed(ispif->base + ISPIF_VFE_m_IRQ_STATUS_2(1));

 writel_relaxed(value0, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_0(0));
 writel_relaxed(value1, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_1(0));
 writel_relaxed(value2, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_2(0));
 writel_relaxed(value3, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_0(1));
 writel_relaxed(value4, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_1(1));
 writel_relaxed(value5, ispif->base + ISPIF_VFE_m_IRQ_CLEAR_2(1));

 writel(0x1, ispif->base + ISPIF_IRQ_GLOBAL_CLEAR_CMD);

 if ((value0 >> 27) & 0x1)
  complete(&ispif->reset_complete);

 if (unlikely(value0 & ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE0 pix0 overflow\n");

 if (unlikely(value0 & ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE0 rdi0 overflow\n");

 if (unlikely(value1 & ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE0 pix1 overflow\n");

 if (unlikely(value1 & ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE0 rdi1 overflow\n");

 if (unlikely(value2 & ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE0 rdi2 overflow\n");

 if (unlikely(value3 & ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE1 pix0 overflow\n");

 if (unlikely(value3 & ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE1 rdi0 overflow\n");

 if (unlikely(value4 & ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE1 pix1 overflow\n");

 if (unlikely(value4 & ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE1 rdi1 overflow\n");

 if (unlikely(value5 & ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW))
  dev_err_ratelimited(to_device(ispif), "VFE1 rdi2 overflow\n");

 return IRQ_HANDLED;
}
