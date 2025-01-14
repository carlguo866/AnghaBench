
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbe_iic_pending_bits {int source; int class; int flags; int prio; } ;
typedef int irq_hw_number_t ;


 int CBE_IIC_IRQ_IPI ;
 unsigned char IIC_IRQ_NODE_SHIFT ;
 int IIC_IRQ_TYPE_IPI ;

__attribute__((used)) static irq_hw_number_t iic_pending_to_hwnum(struct cbe_iic_pending_bits bits)
{
 unsigned char unit = bits.source & 0xf;
 unsigned char node = bits.source >> 4;
 unsigned char class = bits.class & 3;


 if (bits.flags & CBE_IIC_IRQ_IPI)
  return IIC_IRQ_TYPE_IPI | (bits.prio >> 4);
 else
  return (node << IIC_IRQ_NODE_SHIFT) | (class << 4) | unit;
}
