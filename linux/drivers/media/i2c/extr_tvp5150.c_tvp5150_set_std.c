
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dev; } ;
struct tvp5150 {int regmap; } ;


 int TVP5150_VIDEO_STD ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int VIDEO_STD_NTSC_4_43_BIT ;
 int VIDEO_STD_NTSC_MJ_BIT ;
 int VIDEO_STD_PAL_BDGHIN_BIT ;
 int VIDEO_STD_PAL_COMBINATION_N_BIT ;
 int VIDEO_STD_PAL_M_BIT ;
 int VIDEO_STD_SECAM_BIT ;
 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*,int) ;
 int regmap_write (int ,int ,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_set_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 int fmt = 0;



 if (std == V4L2_STD_NTSC_443) {
  fmt = VIDEO_STD_NTSC_4_43_BIT;
 } else if (std == V4L2_STD_PAL_M) {
  fmt = VIDEO_STD_PAL_M_BIT;
 } else if (std == V4L2_STD_PAL_N || std == V4L2_STD_PAL_Nc) {
  fmt = VIDEO_STD_PAL_COMBINATION_N_BIT;
 } else {

  if (std & V4L2_STD_NTSC)
   fmt = VIDEO_STD_NTSC_MJ_BIT;
  else if (std & V4L2_STD_PAL)
   fmt = VIDEO_STD_PAL_BDGHIN_BIT;
  else if (std & V4L2_STD_SECAM)
   fmt = VIDEO_STD_SECAM_BIT;
 }

 dev_dbg_lvl(sd->dev, 1, debug, "Set video std register to %d.\n", fmt);
 regmap_write(decoder->regmap, TVP5150_VIDEO_STD, fmt);
 return 0;
}
