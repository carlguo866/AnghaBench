
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int x; float alpha; float label_alpha; } ;
typedef TYPE_3__ stripes_node_t ;
struct TYPE_13__ {char* bg_file_path; float items_passive_alpha; int icon_spacing_horizontal; float items_active_alpha; int title_name; } ;
typedef TYPE_4__ stripes_handle_t ;
struct TYPE_11__ {int directory_dynamic_wallpapers; } ;
struct TYPE_10__ {scalar_t__ menu_dynamic_wallpaper_enable; } ;
struct TYPE_14__ {TYPE_2__ paths; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;
typedef int file_list_t ;


 int APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG ;
 int PATH_MAX_LENGTH ;
 TYPE_5__* config_get_ptr () ;
 size_t file_list_get_size (int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int fill_pathname_application_special (char*,size_t,int ) ;
 int fill_pathname_join_noext (char*,int ,char*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int menu_display_handle_wallpaper_upload ;
 scalar_t__ path_is_valid (char*) ;
 char* strdup (char*) ;
 int string_is_empty (char*) ;
 int string_is_equal (char*,char*) ;
 char* string_replace_substring (int ,char*,char*) ;
 int stripes_calculate_visible_range (TYPE_4__*,unsigned int,size_t,size_t,unsigned int*,unsigned int*) ;
 int stripes_push_animations (TYPE_3__*,uintptr_t,float,int ) ;
 int strlcat (char*,char*,size_t) ;
 int task_push_image_load (char*,int ,int ,int ,int *) ;
 int video_driver_get_size (int *,unsigned int*) ;
 int video_driver_supports_rgba () ;

__attribute__((used)) static void stripes_list_switch_new(stripes_handle_t *stripes,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, first, last, height;
   size_t end = 0;
   settings_t *settings = config_get_ptr();

   if (settings->bools.menu_dynamic_wallpaper_enable)
   {
      size_t path_size = PATH_MAX_LENGTH * sizeof(char);
      char *path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
      char *tmp = string_replace_substring(stripes->title_name, "/", " ");

      path[0] = '\0';

      if (tmp)
      {
         fill_pathname_join_noext(
               path,
               settings->paths.directory_dynamic_wallpapers,
               tmp,
               path_size);
         free(tmp);
      }

      strlcat(path, ".png", path_size);

      if (!path_is_valid(path))
         fill_pathname_application_special(path, path_size,
               APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_BG);

       if (!string_is_equal(path, stripes->bg_file_path))
       {
           if (path_is_valid(path))
           {
              task_push_image_load(path,
                    video_driver_supports_rgba(), 0,
                  menu_display_handle_wallpaper_upload, ((void*)0));
              if (!string_is_empty(stripes->bg_file_path))
                 free(stripes->bg_file_path);
              stripes->bg_file_path = strdup(path);
           }
       }

       free(path);
   }

   end = file_list_get_size(list);

   first = 0;
   last = end > 0 ? end - 1 : 0;

   video_driver_get_size(((void*)0), &height);
   stripes_calculate_visible_range(stripes, height, end, current, &first, &last);

   for (i = 0; i < end; i++)
   {
      stripes_node_t *node = (stripes_node_t*)
         file_list_get_userdata_at_offset(list, i);
      float ia = stripes->items_passive_alpha;

      if (!node)
         continue;

      node->x = stripes->icon_spacing_horizontal * dir;
      node->alpha = 0;
      node->label_alpha = 0;

      if (i == current)
         ia = stripes->items_active_alpha;

      if (i >= first && i <= last)
         stripes_push_animations(node, (uintptr_t)list, ia, 0);
      else
      {
         node->x = 0;
         node->alpha = node->label_alpha = ia;
      }
   }
}
