
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int M41T80_DATETIME_REG_SIZE ;
 size_t M41T80_REG_DAY ;
 size_t M41T80_REG_HOUR ;
 size_t M41T80_REG_MIN ;
 size_t M41T80_REG_MON ;
 int M41T80_REG_SEC ;
 size_t M41T80_REG_WDAY ;
 size_t M41T80_REG_YEAR ;
 void* bcd2bin (int) ;
 int dev_err (int *,char*) ;
 scalar_t__ i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int m41t80_get_datetime(struct i2c_client *client,
          struct rtc_time *tm)
{
 u8 buf[M41T80_DATETIME_REG_SIZE], dt_addr[1] = { M41T80_REG_SEC };
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1,
   .buf = dt_addr,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = M41T80_DATETIME_REG_SIZE - M41T80_REG_SEC,
   .buf = buf + M41T80_REG_SEC,
  },
 };

 if (i2c_transfer(client->adapter, msgs, 2) < 0) {
  dev_err(&client->dev, "read error\n");
  return -EIO;
 }

 tm->tm_sec = bcd2bin(buf[M41T80_REG_SEC] & 0x7f);
 tm->tm_min = bcd2bin(buf[M41T80_REG_MIN] & 0x7f);
 tm->tm_hour = bcd2bin(buf[M41T80_REG_HOUR] & 0x3f);
 tm->tm_mday = bcd2bin(buf[M41T80_REG_DAY] & 0x3f);
 tm->tm_wday = buf[M41T80_REG_WDAY] & 0x07;
 tm->tm_mon = bcd2bin(buf[M41T80_REG_MON] & 0x1f) - 1;


 tm->tm_year = bcd2bin(buf[M41T80_REG_YEAR]) + 100;
 return 0;
}
