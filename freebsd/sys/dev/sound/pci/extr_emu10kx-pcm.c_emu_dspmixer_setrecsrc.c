
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct emu_pcm_info {int ac97_recdevs; int card; scalar_t__ is_emu10k1; int * sm; } ;
struct TYPE_4__ {size_t input; scalar_t__ recdev; } ;
struct TYPE_3__ {size_t input; scalar_t__ recdev; } ;


 int M_FX0_FRONT_L ;
 int M_FX0_REC_L ;
 int M_FX1_FRONT_R ;
 int M_FX1_REC_R ;
 int M_IN0_REC_L ;
 int M_IN0_REC_R ;
 int M_IN1_REC_L ;
 int M_IN1_REC_R ;
 int M_IN2_REC_L ;
 int M_IN2_REC_R ;
 int M_IN3_REC_L ;
 int M_IN3_REC_R ;
 int M_IN4_REC_L ;
 int M_IN4_REC_R ;
 int M_IN5_REC_L ;
 int M_IN5_REC_R ;
 int M_IN6_REC_L ;
 int M_IN6_REC_R ;
 int SOUND_MIXER_NRDEVICES ;
 int SOUND_MIXER_PCM ;
 TYPE_2__* dspmix_k1 ;
 TYPE_1__* dspmix_k2 ;
 int emumix_get_volume (int ,int ) ;
 int emumix_set_volume (int ,int ,int) ;
 struct emu_pcm_info* mix_getdevinfo (struct snd_mixer*) ;
 scalar_t__ mix_setrecsrc (int *,int) ;

__attribute__((used)) static u_int32_t
emu_dspmixer_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
 struct emu_pcm_info *sc;
 int i;
 u_int32_t recmask;
 int input[8];

 sc = mix_getdevinfo(m);
 recmask = 0;
 for (i=0; i < 8; i++)
  input[i]=0;

 if (sc->sm != ((void*)0))
  if ((src & sc->ac97_recdevs) !=0)
   if (mix_setrecsrc(sc->sm, src & sc->ac97_recdevs) == 0) {
    recmask |= (src & sc->ac97_recdevs);


    input[0] = 1;
   }
 if (sc->is_emu10k1) {
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
   if (dspmix_k1[i].recdev)
    if ((src & (1 << i)) == ((uint32_t)1 << i)) {
    recmask |= (1 << i);

    input[dspmix_k1[i].input] = 1;
    }
  }
 } else {
  for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
   if (dspmix_k2[i].recdev)
    if ((src & (1 << i)) == ((uint32_t)1 << i)) {
    recmask |= (1 << i);

    input[dspmix_k2[i].input] = 1;
    }
  }
 }
 emumix_set_volume(sc->card, M_IN0_REC_L, input[0] == 1 ? 100 : 0);
 emumix_set_volume(sc->card, M_IN0_REC_R, input[0] == 1 ? 100 : 0);

 emumix_set_volume(sc->card, M_IN1_REC_L, input[1] == 1 ? 100 : 0);
 emumix_set_volume(sc->card, M_IN1_REC_R, input[1] == 1 ? 100 : 0);

 if (!sc->is_emu10k1) {
  emumix_set_volume(sc->card, M_IN2_REC_L, input[2] == 1 ? 100 : 0);
  emumix_set_volume(sc->card, M_IN2_REC_R, input[2] == 1 ? 100 : 0);
 }

 if (sc->is_emu10k1) {
  emumix_set_volume(sc->card, M_IN3_REC_L, input[3] == 1 ? 100 : 0);
  emumix_set_volume(sc->card, M_IN3_REC_R, input[3] == 1 ? 100 : 0);
 }

 emumix_set_volume(sc->card, M_IN4_REC_L, input[4] == 1 ? 100 : 0);
 emumix_set_volume(sc->card, M_IN4_REC_R, input[4] == 1 ? 100 : 0);

 emumix_set_volume(sc->card, M_IN5_REC_L, input[5] == 1 ? 100 : 0);
 emumix_set_volume(sc->card, M_IN5_REC_R, input[5] == 1 ? 100 : 0);

 emumix_set_volume(sc->card, M_IN6_REC_L, input[6] == 1 ? 100 : 0);
 emumix_set_volume(sc->card, M_IN6_REC_R, input[6] == 1 ? 100 : 0);


 if ((src & (1 << SOUND_MIXER_PCM)) == (1 << SOUND_MIXER_PCM)) {
  emumix_set_volume(sc->card, M_FX0_REC_L, emumix_get_volume(sc->card, M_FX0_FRONT_L));
  emumix_set_volume(sc->card, M_FX1_REC_R, emumix_get_volume(sc->card, M_FX1_FRONT_R));
 } else {
  emumix_set_volume(sc->card, M_FX0_REC_L, 0);
  emumix_set_volume(sc->card, M_FX1_REC_R, 0);
 }

 return (recmask);
}
