
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UWORD ;
typedef size_t UBYTE ;
struct TYPE_8__ {int enabled; } ;
struct TYPE_7__ {int bank; } ;
struct TYPE_6__ {int bank; int offset; } ;


 int CAMERA_LOCK_FLAG ;
 int DATA_PTRS_BANK ;
 int DISPLAY_ON ;
 int FALSE ;
 int FadeIn () ;
 size_t MAX_ACTORS ;
 int MUL_2 (size_t) ;
 int ReadBankedBankPtr (int ,TYPE_2__*,int *) ;
 int ReadBankedUBYTE (int ,scalar_t__) ;
 int SHOW_SPRITES ;
 int SceneHandleTriggers_b () ;
 int SceneUpdateCamera_b () ;
 int ScriptStart (TYPE_1__*) ;
 void* TRUE ;
 TYPE_3__* actors ;
 TYPE_2__ bank_ptr ;
 int camera_settings ;
 void* check_triggers ;
 TYPE_1__ events_ptr ;
 int hide_sprite_pair (int ) ;
 scalar_t__ last_joy ;
 int * scene_bank_ptrs ;
 size_t scene_index ;
 scalar_t__ scene_load_col_ptr ;
 void* scene_loaded ;
 size_t scene_num_actors ;
 scalar_t__ time ;
 scalar_t__ timer_script_duration ;

void SceneInit_b9()
{
  UBYTE i;


  ReadBankedBankPtr(DATA_PTRS_BANK, &bank_ptr, &scene_bank_ptrs[scene_index]);
  events_ptr.bank = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_col_ptr);
  events_ptr.offset = (ReadBankedUBYTE(bank_ptr.bank, scene_load_col_ptr + 1) * 256) + ReadBankedUBYTE(bank_ptr.bank, scene_load_col_ptr + 2);
  ScriptStart(&events_ptr);


  for (i = scene_num_actors; i != MAX_ACTORS; i++)
  {
    actors[i].enabled = FALSE;
    hide_sprite_pair(MUL_2(i));
  }


  camera_settings = CAMERA_LOCK_FLAG;

  SceneUpdateCamera_b();
  check_triggers = TRUE;
  SceneHandleTriggers_b();

  FadeIn();

  time = 0;
  last_joy = 0;
  scene_loaded = TRUE;


  timer_script_duration = 0;

  SHOW_SPRITES;
  DISPLAY_ON;
}
