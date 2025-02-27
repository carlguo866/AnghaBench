
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pre_emphasis; } ;
struct poseidon {TYPE_1__ radio_data; int udev; } ;


 int ATV_AUDIO_RATE_48K ;
 int AUDIO_SAMPLE_RATE_SEL ;
 int BULK_ALTERNATE_IFACE ;
 int HZ ;
 int SGNL_SRC_SEL ;
 int TASK_INTERRUPTIBLE ;
 int TLG_MODE_FM_RADIO ;
 int TLG_SIG_SRC_ANTENNA ;
 int TLG_TUNE_TVAUDIO_MODE_STEREO ;
 int TUNER_AUD_ANA_STD ;
 int TUNER_AUD_MODE ;
 int TUNER_FREQ_MIN_FM ;
 int TUNE_FREQ_SELECT ;
 int schedule_timeout (int) ;
 int send_set_req (struct poseidon*,int ,int ,int *) ;
 int set_current_state (int ) ;
 int set_tuner_mode (struct poseidon*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int poseidon_check_mode_radio(struct poseidon *p)
{
 int ret;
 u32 status;

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ/2);
 ret = usb_set_interface(p->udev, 0, BULK_ALTERNATE_IFACE);
 if (ret < 0)
  goto out;

 ret = set_tuner_mode(p, TLG_MODE_FM_RADIO);
 if (ret != 0)
  goto out;

 ret = send_set_req(p, SGNL_SRC_SEL, TLG_SIG_SRC_ANTENNA, &status);
 ret = send_set_req(p, TUNER_AUD_ANA_STD,
    p->radio_data.pre_emphasis, &status);
 ret |= send_set_req(p, TUNER_AUD_MODE,
    TLG_TUNE_TVAUDIO_MODE_STEREO, &status);
 ret |= send_set_req(p, AUDIO_SAMPLE_RATE_SEL,
    ATV_AUDIO_RATE_48K, &status);
 ret |= send_set_req(p, TUNE_FREQ_SELECT, TUNER_FREQ_MIN_FM, &status);
out:
 return ret;
}
