
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* zi_gamename; int zi_ndungeons; char* zi_villain; int zi_haszelda; } ;
typedef TYPE_1__ zelda_info_t ;


 int has_dungeons (TYPE_1__*) ;
 int has_princess (TYPE_1__*) ;
 int has_villain (TYPE_1__*) ;
 int sleep (int) ;

int
main(void)
{
 zelda_info_t oot;
 zelda_info_t la;
 zelda_info_t lttp;

 oot.zi_gamename = "Ocarina of Time";
 oot.zi_ndungeons = 10;
 oot.zi_villain = "Ganondorf";
 oot.zi_haszelda = 1;

 la.zi_gamename = "Link's Awakening";
 la.zi_ndungeons = 9;
 la.zi_villain = "Nightmare";
 la.zi_haszelda = 0;

 lttp.zi_gamename = "A Link to the Past";
 lttp.zi_ndungeons = 12;
 lttp.zi_villain = "Ganon";
 lttp.zi_haszelda = 1;

 for (;;) {
  (void) has_princess(&oot);
  (void) has_dungeons(&la);
  (void) has_villain(&lttp);
  sleep(1);
 }

 return (0);
}
