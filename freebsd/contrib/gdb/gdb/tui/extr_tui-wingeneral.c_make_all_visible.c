
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tui_gen_win_info {int dummy; } ;
struct TYPE_5__ {struct tui_gen_win_info* execution_info; } ;
struct TYPE_6__ {TYPE_1__ source_info; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_2__ detail; TYPE_3__ generic; } ;


 scalar_t__ CMD_WIN ;
 int MAX_MAJOR_WINDOWS ;
 int make_visible (struct tui_gen_win_info*,int) ;
 scalar_t__ tui_win_is_source_type (scalar_t__) ;
 TYPE_4__** tui_win_list ;

__attribute__((used)) static void
make_all_visible (int visible)
{
  int i;

  for (i = 0; i < MAX_MAJOR_WINDOWS; i++)
    {
      if (tui_win_list[i] != ((void*)0)
   && ((tui_win_list[i])->generic.type) != CMD_WIN)
 {
   if (tui_win_is_source_type ((tui_win_list[i])->generic.type))
     make_visible ((tui_win_list[i])->detail.source_info.execution_info,
     visible);
   make_visible ((struct tui_gen_win_info *) tui_win_list[i], visible);
 }
    }

  return;
}
