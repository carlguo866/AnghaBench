
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int effect; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;



__attribute__((used)) static int sd_geteffect(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 *val = sd->effect;
 return *val;
}
