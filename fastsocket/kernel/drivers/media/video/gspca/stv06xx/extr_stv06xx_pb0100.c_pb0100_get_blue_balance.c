
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 size_t BLUE_BALANCE_IDX ;

__attribute__((used)) static int pb0100_get_blue_balance(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 *val = sensor_settings[BLUE_BALANCE_IDX];

 return 0;
}
