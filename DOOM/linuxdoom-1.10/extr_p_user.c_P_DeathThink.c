
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int buttons; } ;
struct TYPE_9__ {int viewheight; int playerstate; TYPE_2__ cmd; scalar_t__ damagecount; TYPE_1__* mo; TYPE_1__* attacker; scalar_t__ deltaviewheight; } ;
typedef TYPE_3__ player_t ;
typedef unsigned int angle_t ;
struct TYPE_7__ {scalar_t__ z; scalar_t__ floorz; unsigned int angle; int y; int x; } ;


 unsigned int ANG180 ;
 unsigned int ANG5 ;
 int BT_USE ;
 int FRACUNIT ;
 int PST_REBORN ;
 int P_CalcHeight (TYPE_3__*) ;
 int P_MovePsprites (TYPE_3__*) ;
 unsigned int R_PointToAngle2 (int ,int ,int ,int ) ;
 int onground ;

void P_DeathThink (player_t* player)
{
    angle_t angle;
    angle_t delta;

    P_MovePsprites (player);


    if (player->viewheight > 6*FRACUNIT)
 player->viewheight -= FRACUNIT;

    if (player->viewheight < 6*FRACUNIT)
 player->viewheight = 6*FRACUNIT;

    player->deltaviewheight = 0;
    onground = (player->mo->z <= player->mo->floorz);
    P_CalcHeight (player);

    if (player->attacker && player->attacker != player->mo)
    {
 angle = R_PointToAngle2 (player->mo->x,
     player->mo->y,
     player->attacker->x,
     player->attacker->y);

 delta = angle - player->mo->angle;

 if (delta < ANG5 || delta > (unsigned)-ANG5)
 {


     player->mo->angle = angle;

     if (player->damagecount)
  player->damagecount--;
 }
 else if (delta < ANG180)
     player->mo->angle += ANG5;
 else
     player->mo->angle -= ANG5;
    }
    else if (player->damagecount)
 player->damagecount--;


    if (player->cmd.buttons & BT_USE)
 player->playerstate = PST_REBORN;
}
