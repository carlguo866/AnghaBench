
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;


 scalar_t__ EIO ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ mt9t013_i2c_txdata (unsigned short,unsigned char*,int) ;
 int pr_err (char*,unsigned short,unsigned short) ;

__attribute__((used)) static int32_t mt9t013_i2c_write_b(unsigned short saddr,
 unsigned short waddr, unsigned short wdata)
{
 int32_t rc = -EIO;
 unsigned char buf[2];

 memset(buf, 0, sizeof(buf));
 buf[0] = waddr;
 buf[1] = wdata;
 rc = mt9t013_i2c_txdata(saddr, buf, 2);

 if (rc < 0)
  pr_err("i2c_write failed, addr = 0x%x, val = 0x%x!\n",
  waddr, wdata);

 return rc;
}
