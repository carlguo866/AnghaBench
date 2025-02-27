
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v011 {unsigned int xtal; } ;


 int debug ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int mt9v011_s_config(struct v4l2_subdev *sd, int dumb, void *data)
{
 struct mt9v011 *core = to_mt9v011(sd);
 unsigned *xtal = data;

 v4l2_dbg(1, debug, sd, "s_config called\n");

 if (xtal) {
  core->xtal = *xtal;
  v4l2_dbg(1, debug, sd, "xtal set to %d.%03d MHz\n",
    *xtal / 1000000, (*xtal / 1000) % 1000);
 }

 return 0;
}
