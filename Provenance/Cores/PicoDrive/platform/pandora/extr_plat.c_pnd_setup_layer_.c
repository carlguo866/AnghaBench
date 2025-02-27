
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_plane_info {int enabled; unsigned int size; int pos_x; int pos_y; int out_width; int out_height; } ;
struct omapfb_mem_info {int enabled; unsigned int size; int pos_x; int pos_y; int out_width; int out_height; } ;


 unsigned int LAYER_MEM_SIZE ;
 int OMAPFB_QUERY_MEM ;
 int OMAPFB_QUERY_PLANE ;
 int OMAPFB_SETUP_MEM ;
 int OMAPFB_SETUP_PLANE ;
 int fprintf (int ,char*,unsigned int,unsigned int) ;
 int ioctl (int,int ,struct omapfb_plane_info*) ;
 int perror (char*) ;
 int plat_target_switch_layer (int,int) ;
 int stderr ;

__attribute__((used)) static int pnd_setup_layer_(int fd, int enabled, int x, int y, int w, int h)
{
 struct omapfb_plane_info pi;
 struct omapfb_mem_info mi;
 int is_enabled;
 int retval = 0;
 int ret;

 ret = ioctl(fd, OMAPFB_QUERY_PLANE, &pi);
 if (ret != 0) {
  perror("QUERY_PLANE");
  return -1;
 }

 ret = ioctl(fd, OMAPFB_QUERY_MEM, &mi);
 if (ret != 0) {
  perror("QUERY_MEM");
  return -1;
 }


 is_enabled = pi.enabled;
 if (is_enabled) {
  pi.enabled = 0;
  ret = ioctl(fd, OMAPFB_SETUP_PLANE, &pi);
  if (ret != 0)
   perror("SETUP_PLANE");
  else
   is_enabled = 0;
 }

 if (mi.size < LAYER_MEM_SIZE) {
  unsigned int size_old = mi.size;

  mi.size = LAYER_MEM_SIZE;
  ret = ioctl(fd, OMAPFB_SETUP_MEM, &mi);
  if (ret != 0) {
   perror("SETUP_MEM");
   fprintf(stderr, "(requested %u, had %u)\n",
    mi.size, size_old);
   return -1;
  }
 }

 pi.pos_x = x;
 pi.pos_y = y;
 pi.out_width = w;
 pi.out_height = h;
 pi.enabled = enabled;

 ret = ioctl(fd, OMAPFB_SETUP_PLANE, &pi);
 if (ret == 0) {
  is_enabled = pi.enabled;
 }
 else {
  perror("SETUP_PLANE");
  retval = -1;
 }

 plat_target_switch_layer(1, is_enabled);

 return retval;
}
