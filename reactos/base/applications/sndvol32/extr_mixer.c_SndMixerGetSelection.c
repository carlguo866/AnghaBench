
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int MixerId; } ;
typedef TYPE_1__* PSND_MIXER ;



UINT
SndMixerGetSelection(PSND_MIXER Mixer)
{
    return Mixer->MixerId;
}
