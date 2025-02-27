
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int year ;
struct rtc_time {int tm_year; } ;
struct rtc_mem {int member_1; unsigned char* member_2; int member_0; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int CMOS_CHECKSUM ;
 int CMOS_YEAR ;
 int pcf8583_read_mem (struct i2c_client*,struct rtc_mem*) ;
 int pcf8583_set_datetime (struct i2c_client*,struct rtc_time*,int) ;
 int pcf8583_write_mem (struct i2c_client*,struct rtc_mem*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int pcf8583_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned char year[2], chk;
 struct rtc_mem cmos_year = { CMOS_YEAR, sizeof(year), year };
 struct rtc_mem cmos_check = { CMOS_CHECKSUM, 1, &chk };
 unsigned int proper_year = tm->tm_year + 1900;
 int ret;






 ret = pcf8583_set_datetime(client, tm, 1);
 if (ret)
  return ret;

 ret = pcf8583_read_mem(client, &cmos_check);
 if (ret)
  return ret;

 ret = pcf8583_read_mem(client, &cmos_year);
 if (ret)
  return ret;

 chk -= year[1] + year[0];

 year[1] = proper_year / 100;
 year[0] = proper_year % 100;

 chk += year[1] + year[0];

 ret = pcf8583_write_mem(client, &cmos_year);

 if (ret)
  return ret;

 ret = pcf8583_write_mem(client, &cmos_check);

 return ret;
}
