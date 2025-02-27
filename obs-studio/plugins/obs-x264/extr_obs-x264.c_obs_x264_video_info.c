
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_scale_info {int format; } ;
struct obs_x264 {int encoder; } ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 int VIDEO_FORMAT_NV12 ;
 int obs_encoder_get_preferred_video_format (int ) ;
 scalar_t__ valid_format (int) ;

__attribute__((used)) static void obs_x264_video_info(void *data, struct video_scale_info *info)
{
 struct obs_x264 *obsx264 = data;
 enum video_format pref_format;

 pref_format = obs_encoder_get_preferred_video_format(obsx264->encoder);

 if (!valid_format(pref_format)) {
  pref_format = valid_format(info->format) ? info->format
        : VIDEO_FORMAT_NV12;
 }

 info->format = pref_format;
}
