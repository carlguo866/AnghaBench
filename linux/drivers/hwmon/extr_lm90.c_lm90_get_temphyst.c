
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {scalar_t__ kind; int temp_hyst; int * temp8; } ;


 scalar_t__ adt7461 ;
 scalar_t__ lm99 ;
 scalar_t__ max6646 ;
 int temp_from_s8 (int ) ;
 int temp_from_u8 (int ) ;
 int temp_from_u8_adt7461 (struct lm90_data*,int ) ;
 scalar_t__ tmp451 ;

__attribute__((used)) static int lm90_get_temphyst(struct lm90_data *data, int index)
{
 int temp;

 if (data->kind == adt7461 || data->kind == tmp451)
  temp = temp_from_u8_adt7461(data, data->temp8[index]);
 else if (data->kind == max6646)
  temp = temp_from_u8(data->temp8[index]);
 else
  temp = temp_from_s8(data->temp8[index]);


 if (data->kind == lm99 && index == 3)
  temp += 16000;

 return temp - temp_from_s8(data->temp_hyst);
}
