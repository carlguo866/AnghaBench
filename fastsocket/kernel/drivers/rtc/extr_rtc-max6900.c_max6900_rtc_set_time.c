
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int max6900_i2c_set_time (int ,struct rtc_time*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int max6900_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 return max6900_i2c_set_time(to_i2c_client(dev), tm);
}
