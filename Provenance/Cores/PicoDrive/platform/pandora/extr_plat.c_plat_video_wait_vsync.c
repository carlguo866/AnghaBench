
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main_fb ;
 int vout_fbdev_wait_vsync (int ) ;

void plat_video_wait_vsync(void)
{
 vout_fbdev_wait_vsync(main_fb);
}
