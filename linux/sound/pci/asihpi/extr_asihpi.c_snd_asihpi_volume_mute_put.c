
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int HPI_BITMASK_ALL_CHANNELS ;
 int hpi_handle_error (int ) ;
 int hpi_volume_set_mute (int ,int) ;

__attribute__((used)) static int snd_asihpi_volume_mute_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 u32 h_control = kcontrol->private_value;



 int mute = ucontrol->value.integer.value[0] ? 0 : HPI_BITMASK_ALL_CHANNELS;
 hpi_handle_error(hpi_volume_set_mute(h_control, mute));
 return 1;
}
