
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mergeFrame; int oldDopplerScale; int dopplerScale; scalar_t__ doppler; TYPE_1__* sfx; int origin; scalar_t__ kill; int active; } ;
typedef TYPE_2__ loopSound_t ;
struct TYPE_8__ {int master_vol; int leftvol; int rightvol; int oldDopplerScale; int dopplerScale; scalar_t__ doppler; TYPE_1__* thesfx; } ;
typedef TYPE_3__ channel_t ;
struct TYPE_6__ {int lastTimeUsed; } ;


 int Com_Milliseconds () ;
 size_t MAX_CHANNELS ;
 int MAX_GENTITIES ;
 int S_SpatializeOrigin (int ,int,int*,int*) ;
 TYPE_2__* loopSounds ;
 TYPE_3__* loop_channels ;
 size_t numLoopChannels ;

void S_AddLoopSounds (void) {
 int i, j, time;
 int left_total, right_total, left, right;
 channel_t *ch;
 loopSound_t *loop, *loop2;
 static int loopFrame;


 numLoopChannels = 0;

 time = Com_Milliseconds();

 loopFrame++;
 for ( i = 0 ; i < MAX_GENTITIES ; i++) {
  loop = &loopSounds[i];
  if ( !loop->active || loop->mergeFrame == loopFrame ) {
   continue;
  }

  if (loop->kill) {
   S_SpatializeOrigin( loop->origin, 127, &left_total, &right_total);
  } else {
   S_SpatializeOrigin( loop->origin, 90, &left_total, &right_total);
  }

  loop->sfx->lastTimeUsed = time;

  for (j=(i+1); j< MAX_GENTITIES ; j++) {
   loop2 = &loopSounds[j];
   if ( !loop2->active || loop2->doppler || loop2->sfx != loop->sfx) {
    continue;
   }
   loop2->mergeFrame = loopFrame;

   if (loop2->kill) {
    S_SpatializeOrigin( loop2->origin, 127, &left, &right);
   } else {
    S_SpatializeOrigin( loop2->origin, 90, &left, &right);
   }

   loop2->sfx->lastTimeUsed = time;
   left_total += left;
   right_total += right;
  }
  if (left_total == 0 && right_total == 0) {
   continue;
  }


  ch = &loop_channels[numLoopChannels];

  if (left_total > 255) {
   left_total = 255;
  }
  if (right_total > 255) {
   right_total = 255;
  }

  ch->master_vol = 127;
  ch->leftvol = left_total;
  ch->rightvol = right_total;
  ch->thesfx = loop->sfx;
  ch->doppler = loop->doppler;
  ch->dopplerScale = loop->dopplerScale;
  ch->oldDopplerScale = loop->oldDopplerScale;
  numLoopChannels++;
  if (numLoopChannels == MAX_CHANNELS) {
   return;
  }
 }
}
