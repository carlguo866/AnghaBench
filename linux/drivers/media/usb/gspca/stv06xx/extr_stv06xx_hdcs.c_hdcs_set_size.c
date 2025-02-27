
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct sd {struct hdcs* sensor_priv; } ;
struct TYPE_2__ {unsigned int width; int border; unsigned int height; unsigned int top; unsigned int left; } ;
struct hdcs {unsigned int w; unsigned int h; TYPE_1__ array; } ;


 unsigned int HDCS_1020_BOTTOM_Y_SKIP ;
 int HDCS_FWROW ;
 scalar_t__ IS_1020 (struct sd*) ;
 int hdcs_reg_write_seq (struct sd*,int ,unsigned int*,int) ;

__attribute__((used)) static int hdcs_set_size(struct sd *sd,
  unsigned int width, unsigned int height)
{
 struct hdcs *hdcs = sd->sensor_priv;
 u8 win[4];
 unsigned int x, y;
 int err;


 width = (width + 3) & ~0x3;
 height = (height + 3) & ~0x3;

 if (width > hdcs->array.width)
  width = hdcs->array.width;

 if (IS_1020(sd)) {

  if (height + 2 * hdcs->array.border + HDCS_1020_BOTTOM_Y_SKIP
      > hdcs->array.height)
   height = hdcs->array.height - 2 * hdcs->array.border -
    HDCS_1020_BOTTOM_Y_SKIP;

  y = (hdcs->array.height - HDCS_1020_BOTTOM_Y_SKIP - height) / 2
    + hdcs->array.top;
 } else {
  if (height > hdcs->array.height)
   height = hdcs->array.height;

  y = hdcs->array.top + (hdcs->array.height - height) / 2;
 }

 x = hdcs->array.left + (hdcs->array.width - width) / 2;

 win[0] = y / 4;
 win[1] = x / 4;
 win[2] = (y + height) / 4 - 1;
 win[3] = (x + width) / 4 - 1;

 err = hdcs_reg_write_seq(sd, HDCS_FWROW, win, 4);
 if (err < 0)
  return err;


 hdcs->w = width;
 hdcs->h = height;
 return err;
}
