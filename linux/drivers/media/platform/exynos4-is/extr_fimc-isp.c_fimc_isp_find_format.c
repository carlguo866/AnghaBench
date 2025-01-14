
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fimc_fmt {scalar_t__ const fourcc; scalar_t__ const mbus_code; } ;


 unsigned int ARRAY_SIZE (struct fimc_fmt*) ;
 struct fimc_fmt* fimc_isp_formats ;

const struct fimc_fmt *fimc_isp_find_format(const u32 *pixelformat,
     const u32 *mbus_code, int index)
{
 const struct fimc_fmt *fmt, *def_fmt = ((void*)0);
 unsigned int i;
 int id = 0;

 if (index >= (int)ARRAY_SIZE(fimc_isp_formats))
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(fimc_isp_formats); ++i) {
  fmt = &fimc_isp_formats[i];
  if (pixelformat && fmt->fourcc == *pixelformat)
   return fmt;
  if (mbus_code && fmt->mbus_code == *mbus_code)
   return fmt;
  if (index == id)
   def_fmt = fmt;
  id++;
 }
 return def_fmt;
}
