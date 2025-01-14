
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {int width; int height; } ;


 int CFG_MatchTextParameter (char*,int ,int ) ;
 int FALSE ;
 int ParseAspectRatio (char*,double*,double*) ;
 int TRUE ;
 int Util_sscanbool (char*) ;
 int Util_sscandec (char*) ;
 scalar_t__ Util_sscandouble (char*,double*) ;
 int Util_sscansdec (char*,int *) ;
 int VIDEOMODE_80_column ;
 int VIDEOMODE_FIT_SIZE ;
 int VIDEOMODE_HORIZONTAL_CUSTOM ;
 int VIDEOMODE_HORIZONTAL_SIZE ;
 int VIDEOMODE_KEEP_ASPECT_SIZE ;
 int VIDEOMODE_MAX_HORIZONTAL_AREA ;
 int VIDEOMODE_MAX_VERTICAL_AREA ;
 int VIDEOMODE_MIN_HORIZONTAL_AREA ;
 int VIDEOMODE_MIN_VERTICAL_AREA ;
 int VIDEOMODE_STRETCH_CUSTOM ;
 int VIDEOMODE_STRETCH_SIZE ;
 int VIDEOMODE_VERTICAL_CUSTOM ;
 int VIDEOMODE_VERTICAL_SIZE ;
 int VIDEOMODE_custom_horizontal_area ;
 double VIDEOMODE_custom_stretch ;
 int VIDEOMODE_custom_vertical_area ;
 int VIDEOMODE_fit ;
 int VIDEOMODE_horizontal_area ;
 int VIDEOMODE_horizontal_offset ;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;
 int VIDEOMODE_keep_aspect ;
 int VIDEOMODE_rotate90 ;
 int VIDEOMODE_stretch ;
 int VIDEOMODE_vertical_area ;
 int VIDEOMODE_vertical_offset ;
 int VIDEOMODE_windowed ;
 int fit_cfg_strings ;
 int horizontal_area_cfg_strings ;
 TYPE_2__ init_fs_resolution ;
 int keep_aspect_cfg_strings ;
 scalar_t__ strcmp (char*,char*) ;
 int stretch_cfg_strings ;
 int vertical_area_cfg_strings ;
 TYPE_1__ window_resolution ;

int VIDEOMODE_ReadConfig(char *option, char *ptr)
{
 if (strcmp(option, "VIDEOMODE_WINDOW_WIDTH") == 0)
  return (window_resolution.width = Util_sscandec(ptr)) != -1;
 else if (strcmp(option, "VIDEOMODE_WINDOW_HEIGHT") == 0)
  return (window_resolution.height = Util_sscandec(ptr)) != -1;
 else if (strcmp(option, "VIDEOMODE_FULLSCREEN_WIDTH") == 0)
  return (init_fs_resolution.width = Util_sscandec(ptr)) != -1;
 else if (strcmp(option, "VIDEOMODE_FULLSCREEN_HEIGHT") == 0)
  return (init_fs_resolution.height = Util_sscandec(ptr)) != -1;
 else if (strcmp(option, "VIDEOMODE_WINDOWED") == 0)
  return (VIDEOMODE_windowed = Util_sscanbool(ptr)) != -1;
 else if (strcmp(option, "VIDEOMODE_HORIZONTAL_AREA") == 0) {

  int i = CFG_MatchTextParameter(ptr, horizontal_area_cfg_strings, VIDEOMODE_HORIZONTAL_SIZE);
  if (i < 0) {
   VIDEOMODE_horizontal_area = VIDEOMODE_HORIZONTAL_CUSTOM;
   return (VIDEOMODE_custom_horizontal_area = Util_sscandec(ptr)) != -1
          && VIDEOMODE_custom_horizontal_area >= VIDEOMODE_MIN_HORIZONTAL_AREA
          && VIDEOMODE_custom_horizontal_area <= VIDEOMODE_MAX_HORIZONTAL_AREA;
  }
  VIDEOMODE_horizontal_area = i;
 }
 else if (strcmp(option, "VIDEOMODE_VERTICAL_AREA") == 0) {
  int i = CFG_MatchTextParameter(ptr, vertical_area_cfg_strings, VIDEOMODE_VERTICAL_SIZE);
  if (i < 0) {
   VIDEOMODE_vertical_area = VIDEOMODE_VERTICAL_CUSTOM;
   return (VIDEOMODE_custom_vertical_area = Util_sscandec(ptr)) != -1
          && VIDEOMODE_custom_vertical_area >= VIDEOMODE_MIN_VERTICAL_AREA
          && VIDEOMODE_custom_vertical_area <= VIDEOMODE_MAX_VERTICAL_AREA;
  }
  VIDEOMODE_vertical_area = i;
 }
 else if (strcmp(option, "VIDEOMODE_HORIZONTAL_SHIFT") == 0)
  return Util_sscansdec(ptr, &VIDEOMODE_horizontal_offset);
 else if (strcmp(option, "VIDEOMODE_VERTICAL_SHIFT") == 0)
  return Util_sscansdec(ptr, &VIDEOMODE_vertical_offset);
 else if (strcmp(option, "VIDEOMODE_STRETCH") == 0) {
  int i = CFG_MatchTextParameter(ptr, stretch_cfg_strings, VIDEOMODE_STRETCH_SIZE);
  if (i < 0) {
   VIDEOMODE_stretch = VIDEOMODE_STRETCH_CUSTOM;
   return Util_sscandouble(ptr, &VIDEOMODE_custom_stretch)
           && VIDEOMODE_custom_stretch >= 1.0;
  }
  VIDEOMODE_stretch = i;
 }
 else if (strcmp(option, "VIDEOMODE_FIT") == 0) {
  int i = CFG_MatchTextParameter(ptr, fit_cfg_strings, VIDEOMODE_FIT_SIZE);
  if (i < 0)
   return FALSE;
  VIDEOMODE_fit = i;
 }
 else if (strcmp(option, "VIDEOMODE_IMAGE_ASPECT") == 0) {
  int i = CFG_MatchTextParameter(ptr, keep_aspect_cfg_strings, VIDEOMODE_KEEP_ASPECT_SIZE);
  if (i < 0)
   return FALSE;
  VIDEOMODE_keep_aspect = i;
 }




 else if (strcmp(option, "VIDEOMODE_HOST_ASPECT_RATIO") == 0) {
  if (strcmp(ptr, "AUTO") == 0)
   VIDEOMODE_host_aspect_ratio_w = VIDEOMODE_host_aspect_ratio_h = 0.0;
  else
   return ParseAspectRatio(ptr, &VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);
 }




 else
  return FALSE;
 return TRUE;
}
