
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int flags; } ;
struct amd_i2c_common {struct i2c_msg* msg; } ;
struct amd_i2c_dev {struct amd_i2c_common common; } ;


 int EIO ;
 int I2C_M_RD ;
 int amd_mp2_rw (struct amd_i2c_common*,int ) ;
 int i2c_amd_check_cmd_completion (struct amd_i2c_dev*) ;
 scalar_t__ i2c_amd_dma_map (struct amd_i2c_common*) ;
 int i2c_amd_start_cmd (struct amd_i2c_dev*) ;
 int i2c_read ;
 int i2c_write ;

__attribute__((used)) static int i2c_amd_xfer_msg(struct amd_i2c_dev *i2c_dev, struct i2c_msg *pmsg)
{
 struct amd_i2c_common *i2c_common = &i2c_dev->common;

 i2c_amd_start_cmd(i2c_dev);
 i2c_common->msg = pmsg;

 if (pmsg->len > 32)
  if (i2c_amd_dma_map(i2c_common))
   return -EIO;

 if (pmsg->flags & I2C_M_RD)
  amd_mp2_rw(i2c_common, i2c_read);
 else
  amd_mp2_rw(i2c_common, i2c_write);

 return i2c_amd_check_cmd_completion(i2c_dev);
}
