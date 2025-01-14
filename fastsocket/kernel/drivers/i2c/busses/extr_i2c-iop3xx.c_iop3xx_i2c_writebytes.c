
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_iop3xx_data {int dummy; } ;
struct i2c_adapter {struct i2c_algo_iop3xx_data* algo_data; } ;


 int iop3xx_i2c_write_byte (struct i2c_algo_iop3xx_data*,char const,int) ;

__attribute__((used)) static int
iop3xx_i2c_writebytes(struct i2c_adapter *i2c_adap, const char *buf, int count)
{
 struct i2c_algo_iop3xx_data *iop3xx_adap = i2c_adap->algo_data;
 int ii;
 int rc = 0;

 for (ii = 0; rc == 0 && ii != count; ++ii)
  rc = iop3xx_i2c_write_byte(iop3xx_adap, buf[ii], ii==count-1);
 return rc;
}
