
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int dummy; } ;
typedef int name ;
typedef int hda_nid_t ;


 unsigned int AC_JACK_PORT_COMPLEX ;
 unsigned int AC_JACK_PORT_NONE ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 unsigned int get_defcfg_connect (unsigned int) ;
 int is_jack_detectable (struct hda_codec*,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_pin_label (struct hda_codec*,int ,struct auto_pin_cfg const*,char*,int,int *) ;
 int snd_hda_jack_add_kctl (struct hda_codec*,int ,char*,int,int ,int *) ;
 int snd_hda_jack_detect_enable (struct hda_codec*,int ) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static int add_jack_kctl(struct hda_codec *codec, hda_nid_t nid,
    const struct auto_pin_cfg *cfg,
    const char *base_name)
{
 unsigned int def_conf, conn;
 char name[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
 int err;
 bool phantom_jack;

 if (!nid)
  return 0;
 def_conf = snd_hda_codec_get_pincfg(codec, nid);
 conn = get_defcfg_connect(def_conf);
 if (conn == AC_JACK_PORT_NONE)
  return 0;
 phantom_jack = (conn != AC_JACK_PORT_COMPLEX) ||
         !is_jack_detectable(codec, nid);

 if (base_name)
  strlcpy(name, base_name, sizeof(name));
 else
  snd_hda_get_pin_label(codec, nid, cfg, name, sizeof(name), ((void*)0));
 if (phantom_jack)

  strncat(name, " Phantom", sizeof(name) - strlen(name) - 1);
 err = snd_hda_jack_add_kctl(codec, nid, name, phantom_jack, 0, ((void*)0));
 if (err < 0)
  return err;

 if (!phantom_jack)
  return snd_hda_jack_detect_enable(codec, nid);
 return 0;
}
