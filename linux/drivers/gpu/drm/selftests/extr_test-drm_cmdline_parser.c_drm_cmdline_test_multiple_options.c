
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int xres; int yres; int rotation_reflection; int refresh_specified; int bpp_specified; int rb; int cvt; int interlace; int margins; scalar_t__ force; int specified; } ;


 scalar_t__ DRM_FORCE_UNSPECIFIED ;
 int DRM_MODE_REFLECT_X ;
 int DRM_MODE_ROTATE_270 ;
 int FAIL_ON (int) ;
 int drm_mode_parse_command_line_for_connector (char*,int *,struct drm_cmdline_mode*) ;
 int no_connector ;

__attribute__((used)) static int drm_cmdline_test_multiple_options(void *ignored)
{
 struct drm_cmdline_mode mode = { };

 FAIL_ON(!drm_mode_parse_command_line_for_connector("720x480,rotate=270,reflect_x",
          &no_connector,
          &mode));
 FAIL_ON(!mode.specified);
 FAIL_ON(mode.xres != 720);
 FAIL_ON(mode.yres != 480);
 FAIL_ON(mode.rotation_reflection != (DRM_MODE_ROTATE_270 | DRM_MODE_REFLECT_X));

 FAIL_ON(mode.refresh_specified);

 FAIL_ON(mode.bpp_specified);

 FAIL_ON(mode.rb);
 FAIL_ON(mode.cvt);
 FAIL_ON(mode.interlace);
 FAIL_ON(mode.margins);
 FAIL_ON(mode.force != DRM_FORCE_UNSPECIFIED);

 return 0;
}
