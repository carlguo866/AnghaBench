
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int exposure; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int s32 ;


 int set_exposure (struct gspca_dev*) ;

__attribute__((used)) static int sd_setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->exposure = val;
 if (gspca_dev->streaming)
  return set_exposure(gspca_dev);
 return 0;
}
