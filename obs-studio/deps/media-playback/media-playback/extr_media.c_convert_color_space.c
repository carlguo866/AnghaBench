
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;


 int AVCOL_SPC_BT709 ;
 int VIDEO_CS_709 ;
 int VIDEO_CS_DEFAULT ;

__attribute__((used)) static inline enum video_colorspace convert_color_space(enum AVColorSpace s)
{
 return s == AVCOL_SPC_BT709 ? VIDEO_CS_709 : VIDEO_CS_DEFAULT;
}
