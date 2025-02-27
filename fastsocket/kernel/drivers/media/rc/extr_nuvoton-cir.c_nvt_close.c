
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct nvt_dev* priv; } ;
struct nvt_dev {int in_use; int nvt_lock; } ;


 int nvt_disable_cir (struct nvt_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvt_close(struct rc_dev *dev)
{
 struct nvt_dev *nvt = dev->priv;
 unsigned long flags;

 spin_lock_irqsave(&nvt->nvt_lock, flags);
 nvt->in_use = 0;
 nvt_disable_cir(nvt);
 spin_unlock_irqrestore(&nvt->nvt_lock, flags);
}
