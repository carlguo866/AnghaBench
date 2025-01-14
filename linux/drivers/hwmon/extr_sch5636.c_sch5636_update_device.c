
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch5636_data {int valid; int* in; int* temp_ctrl; int* temp_val; int* fan_ctrl; int* fan_val; int update_lock; scalar_t__ last_updated; int addr; } ;
struct device {int dummy; } ;


 struct sch5636_data* ERR_PTR (int) ;
 scalar_t__ HZ ;
 int SCH5636_FAN_ALARM ;
 int SCH5636_FAN_DEACTIVATED ;
 int SCH5636_NO_FANS ;
 int SCH5636_NO_INS ;
 int SCH5636_NO_TEMPS ;
 int SCH5636_REG_FAN_CTRL (int) ;
 int * SCH5636_REG_FAN_VAL ;
 int * SCH5636_REG_IN_VAL ;
 int SCH5636_REG_TEMP_CTRL (int) ;
 int * SCH5636_REG_TEMP_VAL ;
 int SCH5636_TEMP_ALARM ;
 int SCH5636_TEMP_DEACTIVATED ;
 struct sch5636_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sch56xx_read_virtual_reg (int ,int ) ;
 int sch56xx_read_virtual_reg16 (int ,int ) ;
 int sch56xx_write_virtual_reg (int ,int ,int) ;
 int time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sch5636_data *sch5636_update_device(struct device *dev)
{
 struct sch5636_data *data = dev_get_drvdata(dev);
 struct sch5636_data *ret = data;
 int i, val;

 mutex_lock(&data->update_lock);


 if (data->valid && !time_after(jiffies, data->last_updated + HZ))
  goto abort;

 for (i = 0; i < SCH5636_NO_INS; i++) {
  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_IN_VAL[i]);
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->in[i] = val;
 }

 for (i = 0; i < SCH5636_NO_TEMPS; i++) {
  if (data->temp_ctrl[i] & SCH5636_TEMP_DEACTIVATED)
   continue;

  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_TEMP_VAL[i]);
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->temp_val[i] = val;

  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_TEMP_CTRL(i));
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->temp_ctrl[i] = val;

  if (val & SCH5636_TEMP_ALARM) {
   sch56xx_write_virtual_reg(data->addr,
      SCH5636_REG_TEMP_CTRL(i), val);
  }
 }

 for (i = 0; i < SCH5636_NO_FANS; i++) {
  if (data->fan_ctrl[i] & SCH5636_FAN_DEACTIVATED)
   continue;

  val = sch56xx_read_virtual_reg16(data->addr,
       SCH5636_REG_FAN_VAL[i]);
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->fan_val[i] = val;

  val = sch56xx_read_virtual_reg(data->addr,
            SCH5636_REG_FAN_CTRL(i));
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->fan_ctrl[i] = val;

  if (val & SCH5636_FAN_ALARM) {
   sch56xx_write_virtual_reg(data->addr,
      SCH5636_REG_FAN_CTRL(i), val);
  }
 }

 data->last_updated = jiffies;
 data->valid = 1;
abort:
 mutex_unlock(&data->update_lock);
 return ret;
}
