
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv3028_data {int regmap; } ;
struct device {int dummy; } ;


 long DIV_ROUND_CLOSEST (int,int) ;
 int OFFSET_STEP_PPT ;
 int RV3028_BACKUP ;
 int RV3028_OFFSET ;
 struct rv3028_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int rv3028_read_offset(struct device *dev, long *offset)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev);
 int ret, value, steps;

 ret = regmap_read(rv3028->regmap, RV3028_OFFSET, &value);
 if (ret < 0)
  return ret;

 steps = sign_extend32(value << 1, 8);

 ret = regmap_read(rv3028->regmap, RV3028_BACKUP, &value);
 if (ret < 0)
  return ret;

 steps += value >> 7;

 *offset = DIV_ROUND_CLOSEST(steps * OFFSET_STEP_PPT, 1000);

 return 0;
}
