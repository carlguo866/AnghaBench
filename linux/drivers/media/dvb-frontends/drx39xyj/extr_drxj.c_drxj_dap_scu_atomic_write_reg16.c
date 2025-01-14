
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;


 int EIO ;
 int drxj_dap_scu_atomic_read_write_block (struct i2c_device_addr*,int ,int,scalar_t__*,int) ;

__attribute__((used)) static
int drxj_dap_scu_atomic_write_reg16(struct i2c_device_addr *dev_addr,
       u32 addr,
       u16 data, u32 flags)
{
 u8 buf[2];
 int rc = -EIO;

 buf[0] = (u8) (data & 0xff);
 buf[1] = (u8) ((data >> 8) & 0xff);

 rc = drxj_dap_scu_atomic_read_write_block(dev_addr, addr, 2, buf, 0);

 return rc;
}
