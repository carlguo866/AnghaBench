
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {int fan_sta; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int G762_REG_FAN_STA_FAIL ;
 scalar_t__ IS_ERR (struct g762_data*) ;
 int PTR_ERR (struct g762_data*) ;
 struct g762_data* g762_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_fault_show(struct device *dev, struct device_attribute *da,
          char *buf)
{
 struct g762_data *data = g762_update_client(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%u\n", !!(data->fan_sta & G762_REG_FAN_STA_FAIL));
}
