
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hdsp {scalar_t__ io_type; } ;


 scalar_t__ H9632 ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdsp_info_spdif_sample_rate(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "32000", "44100", "48000", "64000", "88200", "96000",
  "None", "128000", "176400", "192000"
 };
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);

 return snd_ctl_enum_info(uinfo, 1, (hdsp->io_type == H9632) ? 10 : 7,
     texts);
}
