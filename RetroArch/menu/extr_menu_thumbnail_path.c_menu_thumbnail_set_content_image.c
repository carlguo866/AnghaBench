
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 scalar_t__ RARCH_CONTENT_IMAGE ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 scalar_t__ path_is_media_type (char const*) ;
 char* path_remove_extension (char*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

bool menu_thumbnail_set_content_image(
      menu_thumbnail_path_data_t *path_data,
      const char *img_dir, const char *img_name)
{
   char *content_img_no_ext = ((void*)0);

   if (!path_data)
      return 0;



   path_data->right_path[0] = '\0';
   path_data->left_path[0] = '\0';


   path_data->content_path[0] = '\0';
   path_data->content_label[0] = '\0';
   path_data->content_core_name[0] = '\0';
   path_data->content_db_name[0] = '\0';
   path_data->content_img[0] = '\0';


   path_data->playlist_right_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   if (string_is_empty(img_dir))
      return 0;

   if (string_is_empty(img_name))
      return 0;

   if (path_is_media_type(img_name) != RARCH_CONTENT_IMAGE)
      return 0;


   strlcpy(path_data->content_img,
            img_name, sizeof(path_data->content_img));


   content_img_no_ext = path_remove_extension(path_data->content_img);
   if (!string_is_empty(content_img_no_ext))
      strlcpy(path_data->content_label,
            content_img_no_ext, sizeof(path_data->content_label));
   else
      strlcpy(path_data->content_label,
            path_data->content_img, sizeof(path_data->content_label));


   fill_pathname_join(path_data->content_path,
      img_dir, img_name, sizeof(path_data->content_path));


   strlcpy(
         path_data->content_core_name,
         "imageviewer", sizeof(path_data->content_core_name));




   strlcpy(path_data->content_db_name,
         "_images_", sizeof(path_data->content_db_name));


   if (string_is_empty(path_data->content_path))
      return 0;

   return 1;
}
