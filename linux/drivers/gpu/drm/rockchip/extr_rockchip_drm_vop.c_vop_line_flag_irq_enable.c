
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int irq_lock; int is_enabled; } ;


 int LINE_FLAG_INTR ;
 int VOP_INTR_SET_TYPE (struct vop*,int ,int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int clear ;
 int enable ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vop_line_flag_irq_enable(struct vop *vop)
{
 unsigned long flags;

 if (WARN_ON(!vop->is_enabled))
  return;

 spin_lock_irqsave(&vop->irq_lock, flags);

 VOP_INTR_SET_TYPE(vop, clear, LINE_FLAG_INTR, 1);
 VOP_INTR_SET_TYPE(vop, enable, LINE_FLAG_INTR, 1);

 spin_unlock_irqrestore(&vop->irq_lock, flags);
}
