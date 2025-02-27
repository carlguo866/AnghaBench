
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct mxt_data {TYPE_1__* client; scalar_t__ T6_address; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int __mxt_read_reg (TYPE_1__*,scalar_t__,int,scalar_t__*) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int mxt_write_reg (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int mxt_t6_command(struct mxt_data *data, u16 cmd_offset,
     u8 value, bool wait)
{
 u16 reg;
 u8 command_register;
 int timeout_counter = 0;
 int ret;

 reg = data->T6_address + cmd_offset;

 ret = mxt_write_reg(data->client, reg, value);
 if (ret)
  return ret;

 if (!wait)
  return 0;

 do {
  msleep(20);
  ret = __mxt_read_reg(data->client, reg, 1, &command_register);
  if (ret)
   return ret;
 } while (command_register != 0 && timeout_counter++ <= 100);

 if (timeout_counter > 100) {
  dev_err(&data->client->dev, "Command failed!\n");
  return -EIO;
 }

 return 0;
}
