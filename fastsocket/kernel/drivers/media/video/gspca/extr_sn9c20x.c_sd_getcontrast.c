
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;



__attribute__((used)) static int sd_getcontrast(struct gspca_dev *gspca_dev, s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 *val = sd->contrast;
 return 0;
}
