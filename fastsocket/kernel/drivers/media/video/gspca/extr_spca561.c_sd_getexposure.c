
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int exposure; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;



__attribute__((used)) static int sd_getexposure(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 *val = sd->exposure;
 return 0;
}
