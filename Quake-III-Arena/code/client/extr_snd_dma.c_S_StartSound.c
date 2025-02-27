
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vec3_t ;
struct TYPE_8__ {scalar_t__ inMemory; int lastTimeUsed; int soundName; } ;
typedef TYPE_1__ sfx_t ;
typedef size_t sfxHandle_t ;
struct TYPE_9__ {int entnum; int allocTime; int entchannel; int master_vol; int leftvol; int rightvol; scalar_t__ doppler; int startSample; TYPE_1__* thesfx; scalar_t__ fixed_origin; int origin; } ;
typedef TYPE_2__ channel_t ;
struct TYPE_10__ {int integer; } ;


 int CHAN_ANNOUNCER ;
 int Com_Error (int ,char*,int) ;
 int Com_Milliseconds () ;
 int Com_Printf (char*,...) ;
 int ERR_DROP ;
 int MAX_CHANNELS ;
 int MAX_GENTITIES ;
 int START_SAMPLE_IMMEDIATE ;
 int S_COLOR_YELLOW ;
 TYPE_2__* S_ChannelMalloc () ;
 int S_memoryLoad (TYPE_1__*) ;
 int VectorCopy (scalar_t__,int ) ;
 int listener_number ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_2__* s_channels ;
 TYPE_1__* s_knownSfx ;
 size_t s_numSfx ;
 int s_paintedtime ;
 TYPE_3__* s_show ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;

void S_StartSound(vec3_t origin, int entityNum, int entchannel, sfxHandle_t sfxHandle ) {
 channel_t *ch;
 sfx_t *sfx;
  int i, oldest, chosen, time;
  int inplay, allowed;

 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 if ( !origin && ( entityNum < 0 || entityNum > MAX_GENTITIES ) ) {
  Com_Error( ERR_DROP, "S_StartSound: bad entitynum %i", entityNum );
 }

 if ( sfxHandle < 0 || sfxHandle >= s_numSfx ) {
  Com_Printf( S_COLOR_YELLOW, "S_StartSound: handle %i out of range\n", sfxHandle );
  return;
 }

 sfx = &s_knownSfx[ sfxHandle ];

 if (sfx->inMemory == qfalse) {
  S_memoryLoad(sfx);
 }

 if ( s_show->integer == 1 ) {
  Com_Printf( "%i : %s\n", s_paintedtime, sfx->soundName );
 }

 time = Com_Milliseconds();




 allowed = 4;
 if (entityNum == listener_number) {
  allowed = 8;
 }

 ch = s_channels;
 inplay = 0;
 for ( i = 0; i < MAX_CHANNELS ; i++, ch++ ) {
  if (ch[i].entnum == entityNum && ch[i].thesfx == sfx) {
   if (time - ch[i].allocTime < 50) {



    return;
   }
   inplay++;
  }
 }

 if (inplay>allowed) {
  return;
 }

 sfx->lastTimeUsed = time;

 ch = S_ChannelMalloc();
 if (!ch) {
  ch = s_channels;

  oldest = sfx->lastTimeUsed;
  chosen = -1;
  for ( i = 0 ; i < MAX_CHANNELS ; i++, ch++ ) {
   if (ch->entnum != listener_number && ch->entnum == entityNum && ch->allocTime<oldest && ch->entchannel != CHAN_ANNOUNCER) {
    oldest = ch->allocTime;
    chosen = i;
   }
  }
  if (chosen == -1) {
   ch = s_channels;
   for ( i = 0 ; i < MAX_CHANNELS ; i++, ch++ ) {
    if (ch->entnum != listener_number && ch->allocTime<oldest && ch->entchannel != CHAN_ANNOUNCER) {
     oldest = ch->allocTime;
     chosen = i;
    }
   }
   if (chosen == -1) {
    if (ch->entnum == listener_number) {
     for ( i = 0 ; i < MAX_CHANNELS ; i++, ch++ ) {
      if (ch->allocTime<oldest) {
       oldest = ch->allocTime;
       chosen = i;
      }
     }
    }
    if (chosen == -1) {
     Com_Printf("dropping sound\n");
     return;
    }
   }
  }
  ch = &s_channels[chosen];
  ch->allocTime = sfx->lastTimeUsed;
 }

 if (origin) {
  VectorCopy (origin, ch->origin);
  ch->fixed_origin = qtrue;
 } else {
  ch->fixed_origin = qfalse;
 }

 ch->master_vol = 127;
 ch->entnum = entityNum;
 ch->thesfx = sfx;
 ch->startSample = START_SAMPLE_IMMEDIATE;
 ch->entchannel = entchannel;
 ch->leftvol = ch->master_vol;
 ch->rightvol = ch->master_vol;
 ch->doppler = qfalse;
}
