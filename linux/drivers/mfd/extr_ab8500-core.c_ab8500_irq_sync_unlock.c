
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct irq_data {int dummy; } ;
struct ab8500 {int mask_size; scalar_t__* oldmask; scalar_t__* mask; int* irq_reg_offset; int irq_lock; int transfer_ongoing; } ;


 int AB8500_INTERRUPT ;
 int AB8500_IT_MASK1_REG ;
 int atomic_dec (int *) ;
 struct ab8500* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ is_ab8500_1p1_or_earlier (struct ab8500*) ;
 int mutex_unlock (int *) ;
 int set_register_interruptible (struct ab8500*,int ,int,scalar_t__) ;

__attribute__((used)) static void ab8500_irq_sync_unlock(struct irq_data *data)
{
 struct ab8500 *ab8500 = irq_data_get_irq_chip_data(data);
 int i;

 for (i = 0; i < ab8500->mask_size; i++) {
  u8 old = ab8500->oldmask[i];
  u8 new = ab8500->mask[i];
  int reg;

  if (new == old)
   continue;





  if (ab8500->irq_reg_offset[i] == 11 &&
   is_ab8500_1p1_or_earlier(ab8500))
   continue;

  if (ab8500->irq_reg_offset[i] < 0)
   continue;

  ab8500->oldmask[i] = new;

  reg = AB8500_IT_MASK1_REG + ab8500->irq_reg_offset[i];
  set_register_interruptible(ab8500, AB8500_INTERRUPT, reg, new);
 }
 atomic_dec(&ab8500->transfer_ongoing);
 mutex_unlock(&ab8500->irq_lock);
}
