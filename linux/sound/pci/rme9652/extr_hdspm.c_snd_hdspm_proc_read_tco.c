
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {unsigned int control_register; int io_type; } ;




 unsigned int HDSPM_DoubleSpeed ;
 unsigned int HDSPM_QuadSpeed ;
 scalar_t__ HDSPM_RD_PLL_FREQ ;
 scalar_t__ HDSPM_RD_TCO ;


 int HDSPM_TCO1_LTC_Input_valid ;
 int HDSPM_TCO1_TCO_lock ;
 int HDSPM_TCO1_Video_Input_Format_NTSC ;
 int HDSPM_TCO1_Video_Input_Format_PAL ;
 int HDSPM_TCO1_set_drop_frame_flag ;
 scalar_t__ HDSPM_statusRegister ;
 unsigned int HDSPM_tco_detect ;



 int div_u64 (unsigned long long,unsigned int) ;
 void* hdspm_read (struct hdspm*,scalar_t__) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_hdspm_proc_read_tco(struct snd_info_entry *entry,
     struct snd_info_buffer *buffer)
{
 struct hdspm *hdspm = entry->private_data;
 unsigned int status, control;
 int a, ltc, frames, seconds, minutes, hours;
 unsigned int period;
 u64 freq_const = 0;
 u32 rate;

 snd_iprintf(buffer, "--- TCO ---\n");

 status = hdspm_read(hdspm, HDSPM_statusRegister);
 control = hdspm->control_register;


 if (status & HDSPM_tco_detect) {
  snd_iprintf(buffer, "TCO module detected.\n");
  a = hdspm_read(hdspm, HDSPM_RD_TCO+4);
  if (a & HDSPM_TCO1_LTC_Input_valid) {
   snd_iprintf(buffer, "  LTC valid, ");
   switch (a & (132 |
      131)) {
   case 0:
    snd_iprintf(buffer, "24 fps, ");
    break;
   case 132:
    snd_iprintf(buffer, "25 fps, ");
    break;
   case 131:
    snd_iprintf(buffer, "29.97 fps, ");
    break;
   default:
    snd_iprintf(buffer, "30 fps, ");
    break;
   }
   if (a & HDSPM_TCO1_set_drop_frame_flag) {
    snd_iprintf(buffer, "drop frame\n");
   } else {
    snd_iprintf(buffer, "full frame\n");
   }
  } else {
   snd_iprintf(buffer, "  no LTC\n");
  }
  if (a & HDSPM_TCO1_Video_Input_Format_NTSC) {
   snd_iprintf(buffer, "  Video: NTSC\n");
  } else if (a & HDSPM_TCO1_Video_Input_Format_PAL) {
   snd_iprintf(buffer, "  Video: PAL\n");
  } else {
   snd_iprintf(buffer, "  No video\n");
  }
  if (a & HDSPM_TCO1_TCO_lock) {
   snd_iprintf(buffer, "  Sync: lock\n");
  } else {
   snd_iprintf(buffer, "  Sync: no lock\n");
  }

  switch (hdspm->io_type) {
  case 130:
  case 134:
   freq_const = 110069313433624ULL;
   break;
  case 128:
  case 133:
   freq_const = 104857600000000ULL;
   break;
  case 129:
   break;
  }

  period = hdspm_read(hdspm, HDSPM_RD_PLL_FREQ);
  snd_iprintf(buffer, "    period: %u\n", period);



  rate = div_u64(freq_const, period);

  if (control & HDSPM_QuadSpeed) {
   rate *= 4;
  } else if (control & HDSPM_DoubleSpeed) {
   rate *= 2;
  }

  snd_iprintf(buffer, "  Frequency: %u Hz\n",
    (unsigned int) rate);

  ltc = hdspm_read(hdspm, HDSPM_RD_TCO);
  frames = ltc & 0xF;
  ltc >>= 4;
  frames += (ltc & 0x3) * 10;
  ltc >>= 4;
  seconds = ltc & 0xF;
  ltc >>= 4;
  seconds += (ltc & 0x7) * 10;
  ltc >>= 4;
  minutes = ltc & 0xF;
  ltc >>= 4;
  minutes += (ltc & 0x7) * 10;
  ltc >>= 4;
  hours = ltc & 0xF;
  ltc >>= 4;
  hours += (ltc & 0x3) * 10;
  snd_iprintf(buffer,
   "  LTC In: %02d:%02d:%02d:%02d\n",
   hours, minutes, seconds, frames);

 } else {
  snd_iprintf(buffer, "No TCO module detected.\n");
 }
}
