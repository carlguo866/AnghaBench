
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t readyweapon; int* ammo; size_t pendingweapon; scalar_t__* weaponowned; } ;
typedef TYPE_1__ player_t ;
typedef int boolean ;
typedef size_t ammotype_t ;
struct TYPE_6__ {size_t ammo; int downstate; } ;


 int BFGCELLS ;
 int P_SetPsprite (TYPE_1__*,int ,int ) ;
 size_t am_cell ;
 size_t am_clip ;
 size_t am_misl ;
 size_t am_noammo ;
 size_t am_shell ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int ps_weapon ;
 scalar_t__ shareware ;
 TYPE_2__* weaponinfo ;
 size_t wp_bfg ;
 size_t wp_chaingun ;
 size_t wp_chainsaw ;
 size_t wp_fist ;
 size_t wp_missile ;
 size_t wp_nochange ;
 size_t wp_pistol ;
 size_t wp_plasma ;
 size_t wp_shotgun ;
 size_t wp_supershotgun ;

boolean P_CheckAmmo (player_t* player)
{
    ammotype_t ammo;
    int count;

    ammo = weaponinfo[player->readyweapon].ammo;


    if (player->readyweapon == wp_bfg)
 count = BFGCELLS;
    else if (player->readyweapon == wp_supershotgun)
 count = 2;
    else
 count = 1;



    if (ammo == am_noammo || player->ammo[ammo] >= count)
 return 1;



    do
    {
 if (player->weaponowned[wp_plasma]
     && player->ammo[am_cell]
     && (gamemode != shareware) )
 {
     player->pendingweapon = wp_plasma;
 }
 else if (player->weaponowned[wp_supershotgun]
   && player->ammo[am_shell]>2
   && (gamemode == commercial) )
 {
     player->pendingweapon = wp_supershotgun;
 }
 else if (player->weaponowned[wp_chaingun]
   && player->ammo[am_clip])
 {
     player->pendingweapon = wp_chaingun;
 }
 else if (player->weaponowned[wp_shotgun]
   && player->ammo[am_shell])
 {
     player->pendingweapon = wp_shotgun;
 }
 else if (player->ammo[am_clip])
 {
     player->pendingweapon = wp_pistol;
 }
 else if (player->weaponowned[wp_chainsaw])
 {
     player->pendingweapon = wp_chainsaw;
 }
 else if (player->weaponowned[wp_missile]
   && player->ammo[am_misl])
 {
     player->pendingweapon = wp_missile;
 }
 else if (player->weaponowned[wp_bfg]
   && player->ammo[am_cell]>40
   && (gamemode != shareware) )
 {
     player->pendingweapon = wp_bfg;
 }
 else
 {

     player->pendingweapon = wp_fist;
 }

    } while (player->pendingweapon == wp_nochange);


    P_SetPsprite (player,
    ps_weapon,
    weaponinfo[player->readyweapon].downstate);

    return 0;
}
