
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ainode; int chase_time; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Battle_Chase ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 int FloatTime () ;

void AIEnter_Battle_Chase(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "battle chase", "", s);
 bs->chase_time = FloatTime();
 bs->ainode = AINode_Battle_Chase;
}
