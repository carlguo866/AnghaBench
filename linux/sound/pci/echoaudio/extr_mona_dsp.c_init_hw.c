
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct echoaudio {int device_id; int subdevice_id; int bad_board; int input_clock_types; int digital_modes; int dsp_code_to_load; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int ECHOCAPS_HAS_DIGITAL_MODE_ADAT ;
 int ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL ;
 int ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA ;
 int ECHO_CLOCK_BIT_ADAT ;
 int ECHO_CLOCK_BIT_INTERNAL ;
 int ECHO_CLOCK_BIT_SPDIF ;
 int ECHO_CLOCK_BIT_WORD ;
 int ENODEV ;
 int FW_MONA_301_DSP ;
 int FW_MONA_361_DSP ;
 int MONA ;
 int dev_err (int ,char*) ;
 int init_dsp_comm_page (struct echoaudio*) ;
 int load_firmware (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int init_hw(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
 int err;

 if (snd_BUG_ON((subdevice_id & 0xfff0) != MONA))
  return -ENODEV;

 if ((err = init_dsp_comm_page(chip))) {
  dev_err(chip->card->dev,
   "init_hw - could not initialize DSP comm page\n");
  return err;
 }

 chip->device_id = device_id;
 chip->subdevice_id = subdevice_id;
 chip->bad_board = 1;
 chip->input_clock_types =
  ECHO_CLOCK_BIT_INTERNAL | ECHO_CLOCK_BIT_SPDIF |
  ECHO_CLOCK_BIT_WORD | ECHO_CLOCK_BIT_ADAT;
 chip->digital_modes =
  ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_RCA |
  ECHOCAPS_HAS_DIGITAL_MODE_SPDIF_OPTICAL |
  ECHOCAPS_HAS_DIGITAL_MODE_ADAT;


 if (chip->device_id == DEVICE_ID_56361)
  chip->dsp_code_to_load = FW_MONA_361_DSP;
 else
  chip->dsp_code_to_load = FW_MONA_301_DSP;

 if ((err = load_firmware(chip)) < 0)
  return err;
 chip->bad_board = 0;

 return err;
}
