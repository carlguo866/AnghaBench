
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nid_path {unsigned int* ctls; } ;
struct hda_input_mux {int num_items; TYPE_1__* items; } ;
struct auto_pin_cfg {TYPE_2__* inputs; } ;
struct hda_gen_spec {char** input_labels; int * input_label_idxs; int num_adc_nids; struct hda_input_mux input_mux; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int boost_label ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int index; } ;


 scalar_t__ AUTO_PIN_LINE_IN ;
 int ENOMEM ;
 int HDA_CTL_WIDGET_VOL ;
 size_t NID_PATH_BOOST_CTL ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int add_control (struct hda_gen_spec*,int ,char*,int ,unsigned int) ;
 struct nid_path* get_input_path (struct hda_codec*,int ,int) ;
 unsigned int look_for_boost_amp (struct hda_codec*,struct nid_path*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int parse_mic_boost(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 struct hda_input_mux *imux = &spec->input_mux;
 int i;

 if (!spec->num_adc_nids)
  return 0;

 for (i = 0; i < imux->num_items; i++) {
  struct nid_path *path;
  unsigned int val;
  int idx;
  char boost_label[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];

  idx = imux->items[i].index;
  if (idx >= imux->num_items)
   continue;


  if (cfg->inputs[idx].type > AUTO_PIN_LINE_IN)
   continue;

  path = get_input_path(codec, 0, i);
  if (!path)
   continue;

  val = look_for_boost_amp(codec, path);
  if (!val)
   continue;


  snprintf(boost_label, sizeof(boost_label),
    "%s Boost Volume", spec->input_labels[idx]);
  if (!add_control(spec, HDA_CTL_WIDGET_VOL, boost_label,
     spec->input_label_idxs[idx], val))
   return -ENOMEM;

  path->ctls[NID_PATH_BOOST_CTL] = val;
 }
 return 0;
}
