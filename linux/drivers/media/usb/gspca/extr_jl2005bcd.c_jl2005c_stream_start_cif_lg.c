
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; } ;
typedef TYPE_1__ u8 ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int jl2005c_write2 (struct gspca_dev*,TYPE_1__*) ;
 int msleep (int) ;

__attribute__((used)) static int jl2005c_stream_start_cif_lg(struct gspca_dev *gspca_dev)
{
 int i;
 int retval = -1;
 static u8 instruction[][2] = {
  {0x05, 0x00},
  {0x7c, 0x00},
  {0x7d, 0x30},
  {0x02, 0x00},
  {0x01, 0x00},
  {0x04, 0x42},
 };

 for (i = 0; i < ARRAY_SIZE(instruction); i++) {
  msleep(60);
  retval = jl2005c_write2(gspca_dev, instruction[i]);
  if (retval < 0)
   return retval;
 }
 msleep(60);
 return retval;
}
