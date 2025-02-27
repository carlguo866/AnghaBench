
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int y; } ;
struct tui_gen_win_info {int height; int viewport_height; int type; int content_size; int * handle; scalar_t__* content; TYPE_3__ origin; } ;
struct TYPE_5__ {struct tui_gen_win_info* execution_info; } ;
struct TYPE_6__ {TYPE_1__ source_info; } ;
struct tui_win_info {struct tui_gen_win_info generic; TYPE_2__ detail; } ;
struct TYPE_8__ {int data_window; } ;
struct tui_win_element {TYPE_4__ which_element; } ;
typedef int WINDOW ;





 struct tui_win_info* TUI_CMD_WIN ;
 int tui_delete_win (int *) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_make_invisible (struct tui_gen_win_info*) ;
 int tui_win_has_locator (struct tui_win_info*) ;

__attribute__((used)) static void
make_invisible_and_set_new_height (struct tui_win_info * win_info, int height)
{
  int i;
  struct tui_gen_win_info * gen_win_info;

  tui_make_invisible (&win_info->generic);
  win_info->generic.height = height;
  if (height > 1)
    win_info->generic.viewport_height = height - 1;
  else
    win_info->generic.viewport_height = height;
  if (win_info != TUI_CMD_WIN)
    win_info->generic.viewport_height--;


  switch (win_info->generic.type)
    {
    case 128:
    case 129:
      gen_win_info = win_info->detail.source_info.execution_info;
      tui_make_invisible (gen_win_info);
      gen_win_info->height = height;
      gen_win_info->origin.y = win_info->generic.origin.y;
      if (height > 1)
 gen_win_info->viewport_height = height - 1;
      else
 gen_win_info->viewport_height = height;
      if (win_info != TUI_CMD_WIN)
 gen_win_info->viewport_height--;

      if (tui_win_has_locator (win_info))
 {
   gen_win_info = tui_locator_win_info_ptr ();
   tui_make_invisible (gen_win_info);
   gen_win_info->origin.y = win_info->generic.origin.y + height;
 }
      break;
    case 130:

      for (i = 0; i < win_info->generic.content_size; i++)
 {
   gen_win_info = (struct tui_gen_win_info *) & ((struct tui_win_element *)
        win_info->generic.content[i])->which_element.data_window;
   tui_delete_win (gen_win_info->handle);
   gen_win_info->handle = (WINDOW *) ((void*)0);
 }
      break;
    default:
      break;
    }
}
