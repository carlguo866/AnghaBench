
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ menu_materialui_transition_animation; } ;
struct TYPE_12__ {TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef void* menu_animation_ctx_tag ;
struct TYPE_13__ {float target_value; float* subject; int * userdata; int * cb; void* duration; void* tag; void* easing_enum; } ;
typedef TYPE_4__ menu_animation_ctx_entry_t ;
struct TYPE_11__ {scalar_t__ active_menu_tab_index; scalar_t__ last_active_menu_tab_index; scalar_t__ menu_navigation_wrapped; } ;
struct TYPE_14__ {float transition_alpha; float transition_x_offset; size_t last_stack_size; TYPE_2__ nav_bar; scalar_t__ menu_stack_flushed; } ;
typedef TYPE_5__ materialui_handle_t ;


 void* EASING_OUT_QUAD ;
 scalar_t__ MATERIALUI_TRANSITION_ANIM_FADE ;
 scalar_t__ MATERIALUI_TRANSITION_ANIM_NONE ;
 scalar_t__ MATERIALUI_TRANSITION_ANIM_SLIDE ;
 int MENU_LIST_PLAIN ;
 void* MUI_ANIM_DURATION_MENU_TRANSITION ;
 size_t materialui_list_get_size (TYPE_5__*,int ) ;
 int menu_animation_kill_by_tag (void**) ;
 int menu_animation_push (TYPE_4__*) ;

__attribute__((used)) static void materialui_init_transition_animation(
      materialui_handle_t *mui, settings_t *settings)
{
   size_t stack_size = materialui_list_get_size(mui, MENU_LIST_PLAIN);
   menu_animation_ctx_tag alpha_tag = (uintptr_t)&mui->transition_alpha;
   menu_animation_ctx_tag x_offset_tag = (uintptr_t)&mui->transition_x_offset;
   menu_animation_ctx_entry_t alpha_entry;
   menu_animation_ctx_entry_t x_offset_entry;



   if (settings->uints.menu_materialui_transition_animation ==
         MATERIALUI_TRANSITION_ANIM_NONE)
   {
      mui->transition_alpha = 1.0f;
      mui->transition_x_offset = 0.0f;
      mui->last_stack_size = stack_size;
      return;
   }







   menu_animation_kill_by_tag(&alpha_tag);
   mui->transition_alpha = 0.0f;


   alpha_entry.easing_enum = EASING_OUT_QUAD;
   alpha_entry.tag = alpha_tag;
   alpha_entry.duration = MUI_ANIM_DURATION_MENU_TRANSITION;
   alpha_entry.target_value = 1.0f;
   alpha_entry.subject = &mui->transition_alpha;
   alpha_entry.cb = ((void*)0);
   alpha_entry.userdata = ((void*)0);


   menu_animation_push(&alpha_entry);





   menu_animation_kill_by_tag(&x_offset_tag);
   mui->transition_x_offset = 0.0f;





   if (mui->menu_stack_flushed)
   {
      if (settings->uints.menu_materialui_transition_animation !=
               MATERIALUI_TRANSITION_ANIM_FADE)
         mui->transition_x_offset = -1.0f;
   }

   else if (stack_size > mui->last_stack_size)
   {
      if (settings->uints.menu_materialui_transition_animation ==
               MATERIALUI_TRANSITION_ANIM_SLIDE)
         mui->transition_x_offset = 1.0f;
   }

   else if (stack_size < mui->last_stack_size)
   {
      if (settings->uints.menu_materialui_transition_animation ==
               MATERIALUI_TRANSITION_ANIM_SLIDE)
         mui->transition_x_offset = -1.0f;
   }


   else if ((stack_size == 1) &&
            (settings->uints.menu_materialui_transition_animation !=
                  MATERIALUI_TRANSITION_ANIM_FADE))
   {



      if (mui->nav_bar.active_menu_tab_index < mui->nav_bar.last_active_menu_tab_index)
      {
         if (mui->nav_bar.menu_navigation_wrapped)
            mui->transition_x_offset = 1.0f;
         else
            mui->transition_x_offset = -1.0f;
      }
      else if (mui->nav_bar.active_menu_tab_index > mui->nav_bar.last_active_menu_tab_index)
      {
         if (mui->nav_bar.menu_navigation_wrapped)
            mui->transition_x_offset = -1.0f;
         else
            mui->transition_x_offset = 1.0f;
      }
   }

   mui->last_stack_size = stack_size;

   if (mui->transition_x_offset != 0.0f)
   {

      x_offset_entry.easing_enum = EASING_OUT_QUAD;
      x_offset_entry.tag = x_offset_tag;
      x_offset_entry.duration = MUI_ANIM_DURATION_MENU_TRANSITION;
      x_offset_entry.target_value = 0.0f;
      x_offset_entry.subject = &mui->transition_x_offset;
      x_offset_entry.cb = ((void*)0);
      x_offset_entry.userdata = ((void*)0);


      menu_animation_push(&x_offset_entry);
   }
}
