
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int EXPANDER_ADDR ;
 int I2C_READ ;
 int I2C_WRITE ;
 scalar_t__ expander_status ;
 scalar_t__ i2c_readNak () ;
 scalar_t__ i2c_rep_start (int) ;
 scalar_t__ i2c_start (int) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (scalar_t__) ;

uint8_t expander_read(uint8_t reg, uint8_t *data)
{
  if (expander_status == 0) {
    return 0;
  }
  uint8_t ret;
  ret = i2c_start(EXPANDER_ADDR | I2C_WRITE);
  if (ret) goto stop;
  ret = i2c_write(reg);
  if (ret) goto stop;
  ret = i2c_rep_start(EXPANDER_ADDR | I2C_READ);
  if (ret) goto stop;
  *data = i2c_readNak();
 stop:
  i2c_stop();
  return ret;
}
