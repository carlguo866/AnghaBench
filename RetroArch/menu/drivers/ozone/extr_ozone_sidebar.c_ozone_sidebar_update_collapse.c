
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct menu_animation_ctx_entry {uintptr_t tag; float* subject; float target_value; int (* cb ) (TYPE_5__*) ;int duration; TYPE_5__* userdata; int easing_enum; } ;
struct TYPE_11__ {scalar_t__ ozone_collapse_sidebar; } ;
struct TYPE_14__ {TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_13__ {float sidebar_width; float sidebar_width_collapsed; float sidebar_width_normal; } ;
struct TYPE_12__ {float sidebar_text_alpha; } ;
struct TYPE_15__ {int sidebar_collapsed; TYPE_3__ dimensions; TYPE_2__ animations; scalar_t__ cursor_in_sidebar; } ;
typedef TYPE_5__ ozone_handle_t ;
typedef uintptr_t menu_animation_ctx_tag ;


 int ANIMATION_CURSOR_DURATION ;
 int EASING_OUT_QUAD ;
 TYPE_4__* config_get_ptr () ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_animation_push (struct menu_animation_ctx_entry*) ;
 int ozone_entries_update_thumbnail_bar (TYPE_5__*,int,int) ;
 int ozone_is_playlist (TYPE_5__*,int) ;
 int ozone_sidebar_collapse_end (TYPE_5__*) ;

void ozone_sidebar_update_collapse(ozone_handle_t *ozone, bool allow_animation)
{

   settings_t *settings = config_get_ptr();
   bool is_playlist = ozone_is_playlist(ozone, 0);
   menu_animation_ctx_tag tag = (uintptr_t) &ozone->sidebar_collapsed;

   struct menu_animation_ctx_entry entry;

   entry.easing_enum = EASING_OUT_QUAD;
   entry.tag = tag;
   entry.userdata = ozone;
   entry.duration = ANIMATION_CURSOR_DURATION;

   menu_animation_kill_by_tag(&tag);


   if (settings->bools.ozone_collapse_sidebar || (is_playlist && !ozone->cursor_in_sidebar))
   {
      if (allow_animation)
      {
         entry.cb = ozone_sidebar_collapse_end;


         entry.subject = &ozone->animations.sidebar_text_alpha;
         entry.target_value = 0.0f;

         menu_animation_push(&entry);


         entry.subject = &ozone->dimensions.sidebar_width;
         entry.target_value = ozone->dimensions.sidebar_width_collapsed;

         menu_animation_push(&entry);
      }
      else
      {
         ozone->animations.sidebar_text_alpha = 0.0f;
         ozone->dimensions.sidebar_width = ozone->dimensions.sidebar_width_collapsed;
         ozone_sidebar_collapse_end(ozone);
      }
   }

   else if (ozone->cursor_in_sidebar || (!is_playlist && !settings->bools.ozone_collapse_sidebar))
   {
      if (allow_animation)
      {
         ozone->sidebar_collapsed = 0;

         entry.cb = ((void*)0);


         entry.subject = &ozone->animations.sidebar_text_alpha;
         entry.target_value = 1.0f;

         menu_animation_push(&entry);


         entry.subject = &ozone->dimensions.sidebar_width;
         entry.target_value = ozone->dimensions.sidebar_width_normal;

         menu_animation_push(&entry);
      }
      else
      {
         ozone->animations.sidebar_text_alpha = 1.0f;
         ozone->dimensions.sidebar_width = ozone->dimensions.sidebar_width_normal;
         ozone->sidebar_collapsed = 0;
      }
   }

   ozone_entries_update_thumbnail_bar(ozone, is_playlist, allow_animation);
}
