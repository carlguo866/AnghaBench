
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct item_file {int path; } ;
struct TYPE_8__ {int directory_playlist; } ;
struct TYPE_9__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int playlist_t ;
typedef int path_playlist ;
typedef int menu_handle_t ;
typedef int menu_displaylist_info_t ;
struct TYPE_10__ {scalar_t__ entry; scalar_t__ size; scalar_t__ selection; scalar_t__ idx; int type; } ;
typedef TYPE_3__ menu_ctx_list_t ;
typedef int lpl_basename ;


 int MENU_ENUM_LABEL_COLLECTION ;
 int MENU_LIST_HORIZONTAL ;
 int MENU_LIST_TABS ;
 int PATH_MAX_LENGTH ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_base_noext (char*,int ,int) ;
 int fill_pathname_join (char*,int ,int ,int) ;
 int menu_displaylist_parse_playlist (int *,int *,int ,int) ;
 int menu_displaylist_set_new_playlist (int *,char*) ;
 int menu_driver_list_get_entry (TYPE_3__*) ;
 int menu_driver_list_get_selection (TYPE_3__*) ;
 int menu_driver_list_get_size (TYPE_3__*) ;
 int menu_driver_set_thumbnail_system (char*,int) ;
 int msg_hash_to_str (int ) ;
 int * playlist_get_cached () ;
 int playlist_qsort (int *) ;
 int string_is_empty (int ) ;

__attribute__((used)) static int menu_displaylist_parse_horizontal_list(
      menu_handle_t *menu,
      menu_displaylist_info_t *info,
      bool sort)
{
   menu_ctx_list_t list_info;
   menu_ctx_list_t list_horiz_info;
   playlist_t *playlist = ((void*)0);
   struct item_file *item = ((void*)0);

   menu_driver_list_get_selection(&list_info);

   list_info.type = MENU_LIST_TABS;

   menu_driver_list_get_size(&list_info);

   list_horiz_info.type = MENU_LIST_HORIZONTAL;
   list_horiz_info.idx = list_info.selection - (list_info.size +1);

   menu_driver_list_get_entry(&list_horiz_info);

   item = (struct item_file*)list_horiz_info.entry;

   if (!item)
      return -1;

   if (!string_is_empty(item->path))
   {
      char path_playlist[PATH_MAX_LENGTH];
      char lpl_basename[PATH_MAX_LENGTH];
      settings_t *settings = config_get_ptr();

      lpl_basename[0] = '\0';
      path_playlist[0] = '\0';

      fill_pathname_join(
            path_playlist,
            settings->paths.directory_playlist,
            item->path,
            sizeof(path_playlist));
      menu_displaylist_set_new_playlist(menu, path_playlist);



      fill_pathname_base_noext(lpl_basename, item->path, sizeof(lpl_basename));
      menu_driver_set_thumbnail_system(lpl_basename, sizeof(lpl_basename));
   }

   playlist = playlist_get_cached();

   if (playlist)
   {
      if (sort)
         playlist_qsort(playlist);

      menu_displaylist_parse_playlist(info,
            playlist,
            msg_hash_to_str(MENU_ENUM_LABEL_COLLECTION), 1);
   }

   return 0;
}
