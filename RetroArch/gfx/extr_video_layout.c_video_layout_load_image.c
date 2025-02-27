
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct texture_image {int supports_rgba; } ;
typedef int respath ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int video_driver_data; } ;
struct TYPE_6__ {int images_count; void** images; TYPE_2__ render_info; TYPE_1__* render; int base_path; scalar_t__ is_archive; } ;
struct TYPE_4__ {void* (* take_image ) (int ,struct texture_image) ;} ;


 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char*) ;
 int file_archive_compressed_read (char*,void**,int *,scalar_t__*) ;
 int free (void*) ;
 int image_texture_get_type (char const*) ;
 int image_texture_load (struct texture_image*,char*) ;
 int image_texture_load_buffer (struct texture_image*,int ,void*,size_t) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;
 void* stub1 (int ,struct texture_image) ;
 int vec_size (void**,int,int) ;
 int video_driver_supports_rgba () ;
 TYPE_3__* video_layout_state ;

__attribute__((used)) static int video_layout_load_image(const char *path)
{
   struct texture_image image;
   void *handle;
   int index;

   image.supports_rgba = video_driver_supports_rgba();

   if (video_layout_state->is_archive)
   {
      void *buf;
      int64_t len;

      char respath[PATH_MAX_LENGTH];
      strlcpy(respath, video_layout_state->base_path, sizeof(respath));
      strlcat(respath, path, sizeof(respath));

      if (!file_archive_compressed_read(respath, &buf, ((void*)0), &len))
      {
         RARCH_LOG("video_layout: failed to decompress image: %s\n", respath);
         return 0;
      }

      if (!image_texture_load_buffer(&image, image_texture_get_type(path), buf, (size_t)len))
      {
         free(buf);

         RARCH_LOG("video_layout: failed to load image: %s\n", respath);
         return 0;
      }

      free(buf);
   }
   else
   {
      char respath[PATH_MAX_LENGTH];
      strlcpy(respath, video_layout_state->base_path, sizeof(respath));
      strlcat(respath, path, sizeof(respath));

      if (!image_texture_load(&image, respath))
      {
         RARCH_LOG("video_layout: failed to load image: %s\n", respath);
         return 0;
      }
   }

   handle = video_layout_state->render->take_image(
      video_layout_state->render_info.video_driver_data, image);

   if (!handle)
      return 0;

   index = video_layout_state->images_count;

   vec_size((void**)&video_layout_state->images, sizeof(void*), ++video_layout_state->images_count);

   video_layout_state->images[index] = handle;

   return index;
}
