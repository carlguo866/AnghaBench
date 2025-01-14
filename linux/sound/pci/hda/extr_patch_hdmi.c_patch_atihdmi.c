
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hdmi_spec_per_cvt {void* maxbps; int formats; int rates; void* channels_max; } ;
struct TYPE_7__ {int chmap_validate; int cea_alloc_to_tlv_chmap; int chmap_cea_alloc_validate_get_type; int pin_set_slot_channel; int pin_get_slot_channel; } ;
struct TYPE_8__ {void* channels_max; TYPE_3__ ops; } ;
struct TYPE_6__ {int setup_stream; int pin_hbr_setup; int pin_setup_infoframe; int pin_get_eld; } ;
struct hdmi_spec {int num_cvts; TYPE_4__ chmap; TYPE_2__ ops; } ;
struct TYPE_5__ {int init; } ;
struct hda_codec {int link_down_at_suspend; struct hdmi_spec* spec; TYPE_1__ patch_ops; } ;


 int SUPPORTED_FORMATS ;
 int SUPPORTED_RATES ;
 int atihdmi_audio_ops ;
 int atihdmi_init ;
 int atihdmi_paired_cea_alloc_to_tlv_chmap ;
 int atihdmi_paired_chmap_cea_alloc_validate_get_type ;
 int atihdmi_paired_chmap_validate ;
 int atihdmi_pin_get_eld ;
 int atihdmi_pin_get_slot_channel ;
 int atihdmi_pin_hbr_setup ;
 int atihdmi_pin_set_slot_channel ;
 int atihdmi_pin_setup_infoframe ;
 int atihdmi_port2pin ;
 int atihdmi_setup_stream ;
 int generic_acomp_init (struct hda_codec*,int *,int ) ;
 struct hdmi_spec_per_cvt* get_cvt (struct hdmi_spec*,int) ;
 int has_amd_full_remap_support (struct hda_codec*) ;
 void* max (void*,unsigned int) ;
 int patch_generic_hdmi (struct hda_codec*) ;

__attribute__((used)) static int patch_atihdmi(struct hda_codec *codec)
{
 struct hdmi_spec *spec;
 struct hdmi_spec_per_cvt *per_cvt;
 int err, cvt_idx;

 err = patch_generic_hdmi(codec);

 if (err)
  return err;

 codec->patch_ops.init = atihdmi_init;

 spec = codec->spec;

 spec->ops.pin_get_eld = atihdmi_pin_get_eld;
 spec->ops.pin_setup_infoframe = atihdmi_pin_setup_infoframe;
 spec->ops.pin_hbr_setup = atihdmi_pin_hbr_setup;
 spec->ops.setup_stream = atihdmi_setup_stream;

 spec->chmap.ops.pin_get_slot_channel = atihdmi_pin_get_slot_channel;
 spec->chmap.ops.pin_set_slot_channel = atihdmi_pin_set_slot_channel;

 if (!has_amd_full_remap_support(codec)) {

  spec->chmap.ops.chmap_cea_alloc_validate_get_type =
   atihdmi_paired_chmap_cea_alloc_validate_get_type;
  spec->chmap.ops.cea_alloc_to_tlv_chmap =
    atihdmi_paired_cea_alloc_to_tlv_chmap;
  spec->chmap.ops.chmap_validate = atihdmi_paired_chmap_validate;
 }


 for (cvt_idx = 0; cvt_idx < spec->num_cvts; cvt_idx++) {
  per_cvt = get_cvt(spec, cvt_idx);
  per_cvt->channels_max = max(per_cvt->channels_max, 8u);
  per_cvt->rates |= SUPPORTED_RATES;
  per_cvt->formats |= SUPPORTED_FORMATS;
  per_cvt->maxbps = max(per_cvt->maxbps, 24u);
 }

 spec->chmap.channels_max = max(spec->chmap.channels_max, 8u);




 codec->link_down_at_suspend = 1;

 generic_acomp_init(codec, &atihdmi_audio_ops, atihdmi_port2pin);

 return 0;
}
