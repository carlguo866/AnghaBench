
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* lv_map; int nr_voice; int model; TYPE_1__* v_alloc; } ;
struct TYPE_5__ {int voice_mode; scalar_t__* op; int ioaddr; } ;
struct TYPE_4__ {int max_voice; } ;


 scalar_t__ KSL_LEVEL ;
 TYPE_3__* devc ;
 int opl3_command (int ,scalar_t__,int) ;
 int opl3_kill_note (int,int,int ,int) ;
 TYPE_2__* pv_map ;

__attribute__((used)) static void opl3_reset(int devno)
{
 int i;

 for (i = 0; i < 18; i++)
  devc->lv_map[i] = i;

 for (i = 0; i < devc->nr_voice; i++)
 {
  opl3_command(pv_map[devc->lv_map[i]].ioaddr,
   KSL_LEVEL + pv_map[devc->lv_map[i]].op[0], 0xff);

  opl3_command(pv_map[devc->lv_map[i]].ioaddr,
   KSL_LEVEL + pv_map[devc->lv_map[i]].op[1], 0xff);

  if (pv_map[devc->lv_map[i]].voice_mode == 4)
  {
   opl3_command(pv_map[devc->lv_map[i]].ioaddr,
    KSL_LEVEL + pv_map[devc->lv_map[i]].op[2], 0xff);

   opl3_command(pv_map[devc->lv_map[i]].ioaddr,
    KSL_LEVEL + pv_map[devc->lv_map[i]].op[3], 0xff);
  }

  opl3_kill_note(devno, i, 0, 64);
 }

 if (devc->model == 2)
 {
  devc->v_alloc->max_voice = devc->nr_voice = 18;

  for (i = 0; i < 18; i++)
   pv_map[i].voice_mode = 2;

 }
}
