
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int skills; int sitems; int ssecret; int stime; } ;
struct TYPE_3__ {int maxkills; int maxitems; int maxsecret; int partime; } ;


 int S_StartSound (int ,int ) ;
 int TICRATE ;
 int WI_initNoState () ;
 int WI_initShowNextLoc () ;
 int WI_updateAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int bcnt ;
 int* cnt_items ;
 int* cnt_kills ;
 int cnt_par ;
 int cnt_pause ;
 int* cnt_secret ;
 int cnt_time ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 size_t me ;
 TYPE_2__* plrs ;
 int sfx_barexp ;
 int sfx_pistol ;
 int sfx_sgcock ;
 int sp_state ;
 TYPE_1__* wbs ;

void WI_updateStats(void)
{

    WI_updateAnimatedBack();

    if (acceleratestage && sp_state != 10)
    {
 acceleratestage = 0;
 cnt_kills[0] = (plrs[me].skills * 100) / wbs->maxkills;
 cnt_items[0] = (plrs[me].sitems * 100) / wbs->maxitems;
 cnt_secret[0] = (plrs[me].ssecret * 100) / wbs->maxsecret;
 cnt_time = plrs[me].stime / TICRATE;
 cnt_par = wbs->partime / TICRATE;
 S_StartSound(0, sfx_barexp);
 sp_state = 10;
    }

    if (sp_state == 2)
    {
 cnt_kills[0] += 2;

 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 if (cnt_kills[0] >= (plrs[me].skills * 100) / wbs->maxkills)
 {
     cnt_kills[0] = (plrs[me].skills * 100) / wbs->maxkills;
     S_StartSound(0, sfx_barexp);
     sp_state++;
 }
    }
    else if (sp_state == 4)
    {
 cnt_items[0] += 2;

 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 if (cnt_items[0] >= (plrs[me].sitems * 100) / wbs->maxitems)
 {
     cnt_items[0] = (plrs[me].sitems * 100) / wbs->maxitems;
     S_StartSound(0, sfx_barexp);
     sp_state++;
 }
    }
    else if (sp_state == 6)
    {
 cnt_secret[0] += 2;

 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 if (cnt_secret[0] >= (plrs[me].ssecret * 100) / wbs->maxsecret)
 {
     cnt_secret[0] = (plrs[me].ssecret * 100) / wbs->maxsecret;
     S_StartSound(0, sfx_barexp);
     sp_state++;
 }
    }

    else if (sp_state == 8)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 cnt_time += 3;

 if (cnt_time >= plrs[me].stime / TICRATE)
     cnt_time = plrs[me].stime / TICRATE;

 cnt_par += 3;

 if (cnt_par >= wbs->partime / TICRATE)
 {
     cnt_par = wbs->partime / TICRATE;

     if (cnt_time >= plrs[me].stime / TICRATE)
     {
  S_StartSound(0, sfx_barexp);
  sp_state++;
     }
 }
    }
    else if (sp_state == 10)
    {
 if (acceleratestage)
 {
     S_StartSound(0, sfx_sgcock);

     if (gamemode == commercial)
  WI_initNoState();
     else
  WI_initShowNextLoc();
 }
    }
    else if (sp_state & 1)
    {
 if (!--cnt_pause)
 {
     sp_state++;
     cnt_pause = TICRATE;
 }
    }

}
