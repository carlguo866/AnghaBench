
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int MENELAUS_MCT_CTRL2 ;
 int MENELAUS_MCT_CTRL3 ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

int menelaus_set_mmc_slot(int slot, int enable, int power, int cd_en)
{
 int ret, val;

 if (slot != 1 && slot != 2)
  return -EINVAL;
 if (power >= 3)
  return -EINVAL;

 mutex_lock(&the_menelaus->lock);

 ret = menelaus_read_reg(MENELAUS_MCT_CTRL2);
 if (ret < 0)
  goto out;
 val = ret;
 if (slot == 1) {
  if (cd_en)
   val |= (1 << 4) | (1 << 6);
  else
   val &= ~((1 << 4) | (1 << 6));
 } else {
  if (cd_en)
   val |= (1 << 5) | (1 << 7);
  else
   val &= ~((1 << 5) | (1 << 7));
 }
 ret = menelaus_write_reg(MENELAUS_MCT_CTRL2, val);
 if (ret < 0)
  goto out;

 ret = menelaus_read_reg(MENELAUS_MCT_CTRL3);
 if (ret < 0)
  goto out;
 val = ret;
 if (slot == 1) {
  if (enable)
   val |= 1 << 0;
  else
   val &= ~(1 << 0);
 } else {
  int b;

  if (enable)
   ret |= 1 << 1;
  else
   ret &= ~(1 << 1);
  b = menelaus_read_reg(MENELAUS_MCT_CTRL2);
  b &= ~0x03;
  b |= power;
  ret = menelaus_write_reg(MENELAUS_MCT_CTRL2, b);
  if (ret < 0)
   goto out;
 }

 val &= ~(0x03 << 2);
 ret = menelaus_write_reg(MENELAUS_MCT_CTRL3, val);
out:
 mutex_unlock(&the_menelaus->lock);
 return ret;
}
