
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {struct snd_card* card; } ;
struct snd_ctl_elem_id {int index; int name; int iface; } ;
struct snd_card {int dummy; } ;
typedef int id2 ;
typedef int id1 ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int SNDRV_MIXER_ETYPE_INPUT ;
 int SNDRV_MIXER_ETYPE_SWITCH1 ;
 int SNDRV_MIXER_ETYPE_VOLUME1 ;
 char* SNDRV_MIXER_IN_MIC ;
 char* SNDRV_MIXER_IN_MONO ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int mixer ;
 int snd_ctl_rename_id (struct snd_card*,struct snd_ctl_elem_id*,struct snd_ctl_elem_id*) ;
 scalar_t__ snd_mixer_elem_rename (int ,char*,int ,int ,char*,int ) ;
 scalar_t__ snd_mixer_group_rename (int ,char*,int ,char*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_gusmax_mixer(struct snd_wss *chip)
{
 struct snd_card *card = chip->card;
 struct snd_ctl_elem_id id1, id2;
 int err;

 memset(&id1, 0, sizeof(id1));
 memset(&id2, 0, sizeof(id2));
 id1.iface = id2.iface = SNDRV_CTL_ELEM_IFACE_MIXER;

 strcpy(id1.name, "Aux Playback Switch");
 strcpy(id2.name, "Synth Playback Switch");
 if ((err = snd_ctl_rename_id(card, &id1, &id2)) < 0)
  return err;
 strcpy(id1.name, "Aux Playback Volume");
 strcpy(id2.name, "Synth Playback Volume");
 if ((err = snd_ctl_rename_id(card, &id1, &id2)) < 0)
  return err;

 strcpy(id1.name, "Aux Playback Switch"); id1.index = 1;
 strcpy(id2.name, "CD Playback Switch");
 if ((err = snd_ctl_rename_id(card, &id1, &id2)) < 0)
  return err;
 strcpy(id1.name, "Aux Playback Volume");
 strcpy(id2.name, "CD Playback Volume");
 if ((err = snd_ctl_rename_id(card, &id1, &id2)) < 0)
  return err;
 return 0;
}
