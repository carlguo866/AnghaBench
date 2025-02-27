
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int HPI_MAX_CHANNELS ;
 short VOL_STEP_mB ;
 int hpi_handle_error (int ) ;
 int hpi_volume_set_gain (int ,short*) ;

__attribute__((used)) static int snd_asihpi_volume_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 u32 h_control = kcontrol->private_value;
 short an_gain_mB[HPI_MAX_CHANNELS];

 an_gain_mB[0] =
     (ucontrol->value.integer.value[0]) * VOL_STEP_mB;
 an_gain_mB[1] =
     (ucontrol->value.integer.value[1]) * VOL_STEP_mB;



 hpi_handle_error(hpi_volume_set_gain(h_control, an_gain_mB));
 return 1;
}
