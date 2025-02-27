
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int height; int width; int code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5670_mode {size_t link_freq_index; size_t vts_def; size_t height; size_t vts_min; size_t width; } ;
struct ov5670 {int mutex; int hblank; struct ov5670_mode const* cur_mode; int vblank; int pixel_rate; int link_freq; } ;
typedef size_t s32 ;
struct TYPE_4__ {int pixel_rate; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 size_t OV5670_FIXED_PPL ;
 size_t OV5670_VTS_MAX ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int __v4l2_ctrl_modify_range (int ,size_t,size_t,int,size_t) ;
 int __v4l2_ctrl_s_ctrl (int ,size_t) ;
 int __v4l2_ctrl_s_ctrl_int64 (int ,int ) ;
 int height ;
 TYPE_2__* link_freq_configs ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5670_update_pad_format (struct ov5670_mode const*,struct v4l2_subdev_format*) ;
 int supported_modes ;
 struct ov5670* to_ov5670 (struct v4l2_subdev*) ;
 struct ov5670_mode* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int width ;

__attribute__((used)) static int ov5670_set_pad_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct ov5670 *ov5670 = to_ov5670(sd);
 const struct ov5670_mode *mode;
 s32 vblank_def;
 s32 h_blank;

 mutex_lock(&ov5670->mutex);

 fmt->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;

 mode = v4l2_find_nearest_size(supported_modes,
          ARRAY_SIZE(supported_modes),
          width, height,
          fmt->format.width, fmt->format.height);
 ov5670_update_pad_format(mode, fmt);
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  *v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;
 } else {
  ov5670->cur_mode = mode;
  __v4l2_ctrl_s_ctrl(ov5670->link_freq, mode->link_freq_index);
  __v4l2_ctrl_s_ctrl_int64(
   ov5670->pixel_rate,
   link_freq_configs[mode->link_freq_index].pixel_rate);

  vblank_def = ov5670->cur_mode->vts_def -
        ov5670->cur_mode->height;
  __v4l2_ctrl_modify_range(
   ov5670->vblank,
   ov5670->cur_mode->vts_min - ov5670->cur_mode->height,
   OV5670_VTS_MAX - ov5670->cur_mode->height, 1,
   vblank_def);
  __v4l2_ctrl_s_ctrl(ov5670->vblank, vblank_def);
  h_blank = OV5670_FIXED_PPL - ov5670->cur_mode->width;
  __v4l2_ctrl_modify_range(ov5670->hblank, h_blank, h_blank, 1,
      h_blank);
 }

 mutex_unlock(&ov5670->mutex);

 return 0;
}
