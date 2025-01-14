
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int vstart; scalar_t__ hstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int AUTOGAIN_IDX ;
 int ENODEV ;
 int EXPOSURE_IDX ;
 int GAIN_IDX ;
 int err (char*) ;
 scalar_t__ i2c_w2 (struct gspca_dev*,int ,int ) ;
 TYPE_1__* mt9m111_init ;

__attribute__((used)) static int mt9m111_init_sensor(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;
 for (i = 0; i < ARRAY_SIZE(mt9m111_init); i++) {
  if (i2c_w2(gspca_dev, mt9m111_init[i].reg,
    mt9m111_init[i].val) < 0) {
   err("MT9M111 sensor initialization failed");
   return -ENODEV;
  }
 }
 gspca_dev->ctrl_dis = (1 << EXPOSURE_IDX) | (1 << AUTOGAIN_IDX)
    | (1 << GAIN_IDX);
 sd->hstart = 0;
 sd->vstart = 2;
 return 0;
}
