
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95241_data {int interval; int config; int trutherm; int model; } ;
struct i2c_client {int dummy; } ;


 int CFG_CR1000 ;
 int LM95241_REG_RW_CONFIG ;
 int LM95241_REG_RW_REMOTE_MODEL ;
 int LM95241_REG_RW_REM_FILTER ;
 int LM95241_REG_RW_TRUTHERM ;
 int R1FE_MASK ;
 int R2FE_MASK ;
 int TT1_SHIFT ;
 int TT2_SHIFT ;
 int TT_OFF ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm95241_init_client(struct i2c_client *client,
    struct lm95241_data *data)
{
 data->interval = 1000;
 data->config = CFG_CR1000;
 data->trutherm = (TT_OFF << TT1_SHIFT) | (TT_OFF << TT2_SHIFT);

 i2c_smbus_write_byte_data(client, LM95241_REG_RW_CONFIG, data->config);
 i2c_smbus_write_byte_data(client, LM95241_REG_RW_REM_FILTER,
      R1FE_MASK | R2FE_MASK);
 i2c_smbus_write_byte_data(client, LM95241_REG_RW_TRUTHERM,
      data->trutherm);
 i2c_smbus_write_byte_data(client, LM95241_REG_RW_REMOTE_MODEL,
      data->model);
}
