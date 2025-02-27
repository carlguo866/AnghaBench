
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_JACK_PORT_BOTH ;
 scalar_t__ AC_JACK_PORT_NONE ;
 scalar_t__ get_defcfg_association (unsigned int) ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 unsigned char get_defcfg_sequence (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void vt1708_set_pinconfig_connect(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int def_conf;
 unsigned char seqassoc;

 def_conf = snd_hda_codec_get_pincfg(codec, nid);
 seqassoc = (unsigned char) get_defcfg_association(def_conf);
 seqassoc = (seqassoc << 4) | get_defcfg_sequence(def_conf);
 if (get_defcfg_connect(def_conf) == AC_JACK_PORT_NONE
     && (seqassoc == 0xf0 || seqassoc == 0xff)) {
  def_conf = def_conf & (~(AC_JACK_PORT_BOTH << 30));
  snd_hda_codec_set_pincfg(codec, nid, def_conf);
 }

 return;
}
