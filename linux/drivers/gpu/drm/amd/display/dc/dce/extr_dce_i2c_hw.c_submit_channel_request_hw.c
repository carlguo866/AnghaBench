
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_request_transaction_data {int status; } ;
struct dce_i2c_hw {int dummy; } ;


 int I2C_CHANNEL_OPERATION_ENGINE_BUSY ;
 int I2C_CHANNEL_OPERATION_SUCCEEDED ;
 int execute_transaction (struct dce_i2c_hw*) ;
 scalar_t__ is_hw_busy (struct dce_i2c_hw*) ;
 int process_transaction (struct dce_i2c_hw*,struct i2c_request_transaction_data*) ;
 int reset_hw_engine (struct dce_i2c_hw*) ;

__attribute__((used)) static void submit_channel_request_hw(
 struct dce_i2c_hw *dce_i2c_hw,
 struct i2c_request_transaction_data *request)
{
 request->status = I2C_CHANNEL_OPERATION_SUCCEEDED;

 if (!process_transaction(dce_i2c_hw, request))
  return;

 if (is_hw_busy(dce_i2c_hw)) {
  request->status = I2C_CHANNEL_OPERATION_ENGINE_BUSY;
  return;
 }
 reset_hw_engine(dce_i2c_hw);

 execute_transaction(dce_i2c_hw);


}
