
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct item_cheat {int dummy; } ;
typedef int msg ;
struct TYPE_5__ {size_t idx; } ;
struct TYPE_7__ {int size; TYPE_2__* cheats; TYPE_1__ working_cheat; } ;
struct TYPE_6__ {int * desc; int * code; int idx; } ;


 int CHEAT_HANDLER_TYPE_RETRO ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEAT_DELETE_SUCCESS ;
 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE ;
 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH ;
 int cheat_manager_get_size () ;
 int cheat_manager_realloc (unsigned int,int ) ;
 TYPE_4__ cheat_manager_state ;
 int free (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_pop_stack (size_t*,int ,int) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (size_t) ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int action_ok_cheat_delete(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char msg[256];
   size_t new_selection_ptr = 0;
   unsigned int new_size = cheat_manager_get_size() - 1;

   if (new_size >0)
   {
      unsigned i;
      if (cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code)
      {
         free(cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code);
         cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code = ((void*)0) ;
      }
      if (cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc)
      {
         free(cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc);
         cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc = ((void*)0) ;
      }
      for (i = cheat_manager_state.working_cheat.idx ; i <cheat_manager_state.size-1 ; i++)
      {
         memcpy(&cheat_manager_state.cheats[i], &cheat_manager_state.cheats[i+1], sizeof(struct item_cheat ));
         cheat_manager_state.cheats[i].idx-- ;
      }
      cheat_manager_state.cheats[cheat_manager_state.size-1].code = ((void*)0) ;
      cheat_manager_state.cheats[cheat_manager_state.size-1].desc = ((void*)0) ;
   }

   cheat_manager_realloc(new_size, CHEAT_HANDLER_TYPE_RETRO);

   strlcpy(msg, msg_hash_to_str(MSG_CHEAT_DELETE_SUCCESS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   new_selection_ptr = menu_navigation_get_selection();
   menu_entries_pop_stack(&new_selection_ptr, 0, 1);
   menu_navigation_set_selection(new_selection_ptr);

   menu_driver_ctl(RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, ((void*)0));
   menu_driver_ctl(RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, ((void*)0));

   return 0;
}
