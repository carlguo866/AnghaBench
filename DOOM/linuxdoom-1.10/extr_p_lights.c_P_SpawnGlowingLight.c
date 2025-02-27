
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ special; int lightlevel; } ;
typedef TYPE_2__ sector_t ;
struct TYPE_8__ {scalar_t__ acp1; } ;
struct TYPE_11__ {TYPE_1__ function; } ;
struct TYPE_10__ {int direction; TYPE_7__ thinker; int maxlight; int minlight; TYPE_2__* sector; } ;
typedef TYPE_3__ glow_t ;
typedef scalar_t__ actionf_p1 ;


 int PU_LEVSPEC ;
 int P_AddThinker (TYPE_7__*) ;
 int P_FindMinSurroundingLight (TYPE_2__*,int ) ;
 scalar_t__ T_Glow ;
 TYPE_3__* Z_Malloc (int,int ,int ) ;

void P_SpawnGlowingLight(sector_t* sector)
{
    glow_t* g;

    g = Z_Malloc( sizeof(*g), PU_LEVSPEC, 0);

    P_AddThinker(&g->thinker);

    g->sector = sector;
    g->minlight = P_FindMinSurroundingLight(sector,sector->lightlevel);
    g->maxlight = sector->lightlevel;
    g->thinker.function.acp1 = (actionf_p1) T_Glow;
    g->direction = -1;

    sector->special = 0;
}
