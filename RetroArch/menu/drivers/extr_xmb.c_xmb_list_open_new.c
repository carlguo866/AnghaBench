
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {float alpha; float label_alpha; int x; float y; int zoom; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_13__ {int icon_size; float margins_screen_top; float items_active_alpha; float items_passive_alpha; int old_depth; int depth; int thumbnail_path_data; scalar_t__ is_db_manager_list; scalar_t__ is_playlist; scalar_t__ categories_selection_ptr; int categories_active_zoom; int categories_passive_zoom; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_14__ {float target_value; float* subject; uintptr_t tag; int * cb; int easing_enum; int duration; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;
typedef int file_list_t ;


 int EASING_OUT_QUAD ;
 int MENU_ENTRIES_CTL_SET_START ;
 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int XMB_DELAY ;
 unsigned int XMB_SYSTEM_TAB_SETTINGS ;
 size_t file_list_get_size (int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int menu_animation_push (TYPE_3__*) ;
 int menu_entries_ctl (int ,size_t*) ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 int video_driver_get_size (int *,unsigned int*) ;
 unsigned int xmb_get_system_tab (TYPE_2__*,unsigned int) ;
 float xmb_item_y (TYPE_2__*,unsigned int,size_t) ;
 int xmb_set_thumbnail_content (TYPE_2__*,int *) ;
 int xmb_unload_thumbnail_textures (TYPE_2__*) ;
 int xmb_update_thumbnail_image (TYPE_2__*) ;
 int xmb_update_thumbnail_path (TYPE_2__*,int ,char) ;

__attribute__((used)) static void xmb_list_open_new(xmb_handle_t *xmb,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, height;
   unsigned xmb_system_tab = 0;
   size_t skip = 0;
   int threshold = xmb->icon_size * 10;
   size_t end = file_list_get_size(list);

   video_driver_get_size(((void*)0), &height);

   for (i = 0; i < end; i++)
   {
      float ia;
      float real_y;
      xmb_node_t *node = (xmb_node_t*)
         file_list_get_userdata_at_offset(list, i);

      if (!node)
         continue;

      if (dir == 1)
      {
         node->alpha = 0;
         node->label_alpha = 0;
      }
      else if (dir == -1)
      {
         if (i != current)
            node->alpha = 0;
         node->label_alpha = 0;
      }

      node->x = xmb->icon_size * dir * 2;
      node->y = xmb_item_y(xmb, i, current);
      node->zoom = xmb->categories_passive_zoom;

      real_y = node->y + xmb->margins_screen_top;

      if (i == current)
      {
         node->zoom = xmb->categories_active_zoom;
         ia = xmb->items_active_alpha;
      }
      else
         ia = xmb->items_passive_alpha;

      if (real_y < -threshold || real_y > height+threshold)
      {
         node->alpha = node->label_alpha = ia;
         node->x = 0;
      }
      else
      {
         menu_animation_ctx_entry_t anim_entry;

         anim_entry.duration = XMB_DELAY;
         anim_entry.target_value = ia;
         anim_entry.subject = &node->alpha;
         anim_entry.easing_enum = EASING_OUT_QUAD;
         anim_entry.tag = (uintptr_t)list;
         anim_entry.cb = ((void*)0);

         menu_animation_push(&anim_entry);

         anim_entry.subject = &node->label_alpha;

         menu_animation_push(&anim_entry);

         anim_entry.target_value = 0;
         anim_entry.subject = &node->x;

         menu_animation_push(&anim_entry);
      }
   }

   xmb->old_depth = xmb->depth;
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &skip);

   xmb_system_tab = xmb_get_system_tab(xmb,
         (unsigned)xmb->categories_selection_ptr);

   if (xmb_system_tab <= XMB_SYSTEM_TAB_SETTINGS)
   {
      if ( menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
            menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
      {




         if (xmb->depth != 5)
            xmb_unload_thumbnail_textures(xmb);

         if (xmb->is_playlist || xmb->is_db_manager_list)
         {
            xmb_set_thumbnail_content(xmb, ((void*)0));

            if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
               xmb_update_thumbnail_path(xmb, 0 , 'R');

            if (menu_thumbnail_is_enabled(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
               xmb_update_thumbnail_path(xmb, 0 , 'L');

            xmb_update_thumbnail_image(xmb);
         }
      }
   }
}
