
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ menu_is_alive; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint64_t ;
struct TYPE_7__ {unsigned int screen_width; unsigned int screen_height; unsigned int video_width; unsigned int video_height; scalar_t__ fd; } ;
typedef TYPE_2__ network_video_t ;
typedef int gfx_ctx_mode_t ;


 unsigned int NETWORK_VIDEO_PIXELFORMAT_BGRA8888 ;
 unsigned int NETWORK_VIDEO_PIXELFORMAT_RGB565 ;
 unsigned int NETWORK_VIDEO_PIXELFORMAT_RGBA8888 ;
 int font_driver_render_msg (TYPE_1__*,int *,char const*,int *) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int menu_driver_frame (TYPE_1__*) ;
 unsigned int network_menu_bits ;
 void const* network_menu_frame ;
 unsigned int network_menu_height ;
 unsigned int network_menu_pitch ;
 unsigned int network_menu_width ;
 unsigned int network_video_bits ;
 unsigned int network_video_height ;
 unsigned int network_video_pitch ;
 int* network_video_temp_buf ;
 unsigned int network_video_width ;
 int socket_send_all_blocking (scalar_t__,void const*,int,int) ;

__attribute__((used)) static bool network_gfx_frame(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   gfx_ctx_mode_t mode;
   const void *frame_to_copy = frame;
   unsigned width = 0;
   unsigned height = 0;
   unsigned bits = network_video_bits;
   unsigned pixfmt = NETWORK_VIDEO_PIXELFORMAT_RGB565;
   bool draw = 1;
   network_video_t *network = (network_video_t*)data;

   if (!frame || !frame_width || !frame_height)
      return 1;





   if (network_video_width != frame_width || network_video_height != frame_height || network_video_pitch != pitch)
   {
      if (frame_width > 4 && frame_height > 4)
      {
         network_video_width = frame_width;
         network_video_height = frame_height;
         network_video_pitch = pitch;
         network->screen_width = network_video_width;
         network->screen_height = network_video_height;
      }
   }

   if (network_menu_frame && video_info->menu_is_alive)
   {
      frame_to_copy = network_menu_frame;
      width = network_menu_width;
      height = network_menu_height;
      pitch = network_menu_pitch;
      bits = network_menu_bits;
   }
   else
   {
      width = network_video_width;
      height = network_video_height;
      pitch = network_video_pitch;

      if (frame_width == 4 && frame_height == 4 && (frame_width < width && frame_height < height))
         draw = 0;

      if (video_info->menu_is_alive)
         draw = 0;
   }

   if (network->video_width != width || network->video_height != height)
   {
      network->video_width = width;
      network->video_height = height;

      if (network_video_temp_buf)
      {
         free(network_video_temp_buf);
      }

      network_video_temp_buf = (unsigned*)malloc(network->screen_width * network->screen_height * sizeof(unsigned));
   }

   if (bits == 16)
   {
      if (network_video_temp_buf)
      {
         if (frame_to_copy == network_menu_frame)
         {

            unsigned x, y;

            for (y = 0; y < network->screen_height; y++)
            {
               for (x = 0; x < network->screen_width; x++)
               {

                  unsigned scaled_x = (width * x) / network->screen_width;
                  unsigned scaled_y = (height * y) / network->screen_height;
                  unsigned short pixel = ((unsigned short*)frame_to_copy)[width * scaled_y + scaled_x];


                  unsigned r = ((pixel & 0xF000) << 8) | ((pixel & 0xF000) << 4);
                  unsigned g = ((pixel & 0x0F00) << 4) | ((pixel & 0x0F00) << 0);
                  unsigned b = ((pixel & 0x00F0) << 0) | ((pixel & 0x00F0) >> 4);

                  network_video_temp_buf[network->screen_width * y + x] = 0xFF000000 | b | g | r;
               }
            }

            pixfmt = NETWORK_VIDEO_PIXELFORMAT_RGBA8888;
            frame_to_copy = network_video_temp_buf;
         }
         else
         {

            unsigned x, y;

            for (y = 0; y < network->screen_height; y++)
            {
               for (x = 0; x < network->screen_width; x++)
               {

                  unsigned scaled_x = (width * x) / network->screen_width;
                  unsigned scaled_y = (height * y) / network->screen_height;
                  unsigned short pixel = ((unsigned short*)frame_to_copy)[(pitch / (bits / 8)) * scaled_y + scaled_x];


                  unsigned r = ((pixel & 0x001F) << 3) | ((pixel & 0x001C) >> 2);
                  unsigned g = ((pixel & 0x07E0) << 5) | ((pixel & 0x0600) >> 1);
                  unsigned b = ((pixel & 0xF800) << 8) | ((pixel & 0xE000) << 3);

                  network_video_temp_buf[network->screen_width * y + x] = 0xFF000000 | b | g | r;
               }
            }

            pixfmt = NETWORK_VIDEO_PIXELFORMAT_BGRA8888;
            frame_to_copy = network_video_temp_buf;
         }
      }
      else
      {

      }
   }
   else
   {

      unsigned x, y;

      for (y = 0; y < network->screen_height; y++)
      {
         for (x = 0; x < network->screen_width; x++)
         {

            unsigned scaled_x = (width * x) / network->screen_width;
            unsigned scaled_y = (height * y) / network->screen_height;
            unsigned pixel = ((unsigned*)frame_to_copy)[(pitch / (bits / 8)) * scaled_y + scaled_x];

            network_video_temp_buf[network->screen_width * y + x] = pixel;
         }
      }

      pixfmt = NETWORK_VIDEO_PIXELFORMAT_BGRA8888;
      frame_to_copy = network_video_temp_buf;
   }

   if (draw && network->screen_width > 0 && network->screen_height > 0)
   {
      if (network->fd > 0)
         socket_send_all_blocking(network->fd, frame_to_copy, network->screen_width * network->screen_height * 4, 1);
   }

   if (msg)
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));

   return 1;
}
