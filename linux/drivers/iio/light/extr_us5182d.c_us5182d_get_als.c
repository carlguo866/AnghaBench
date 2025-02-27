
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int ga; int client; } ;


 int US5182D_GA_RESOLUTION ;
 int US5182D_REG_ADL ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int us5182d_als_enable (struct us5182d_data*) ;

__attribute__((used)) static int us5182d_get_als(struct us5182d_data *data)
{
 int ret;
 unsigned long result;

 ret = us5182d_als_enable(data);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_word_data(data->client,
           US5182D_REG_ADL);
 if (ret < 0)
  return ret;

 result = ret * data->ga / US5182D_GA_RESOLUTION;
 if (result > 0xffff)
  result = 0xffff;

 return result;
}
