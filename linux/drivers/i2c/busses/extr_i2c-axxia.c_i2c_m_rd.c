
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;


 int I2C_M_RD ;

__attribute__((used)) static int i2c_m_rd(const struct i2c_msg *msg)
{
 return (msg->flags & I2C_M_RD) != 0;
}
