
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ADCCR_SAMPLERATE_16 ;
 unsigned int ADCCR_SAMPLERATE_22 ;
 unsigned int ADCCR_SAMPLERATE_24 ;
 unsigned int ADCCR_SAMPLERATE_32 ;
 unsigned int ADCCR_SAMPLERATE_44 ;
 unsigned int ADCCR_SAMPLERATE_48 ;
 unsigned int A_ADCCR_SAMPLERATE_11 ;
 unsigned int A_ADCCR_SAMPLERATE_12 ;
 unsigned int A_ADCCR_SAMPLERATE_8 ;
 int snd_BUG () ;

__attribute__((used)) static unsigned int snd_emu10k1_audigy_capture_rate_reg(unsigned int rate)
{
 switch (rate) {
 case 8000: return A_ADCCR_SAMPLERATE_8;
 case 11025: return A_ADCCR_SAMPLERATE_11;
 case 12000: return A_ADCCR_SAMPLERATE_12;
 case 16000: return ADCCR_SAMPLERATE_16;
 case 22050: return ADCCR_SAMPLERATE_22;
 case 24000: return ADCCR_SAMPLERATE_24;
 case 32000: return ADCCR_SAMPLERATE_32;
 case 44100: return ADCCR_SAMPLERATE_44;
 case 48000: return ADCCR_SAMPLERATE_48;
 default:
   snd_BUG();
   return A_ADCCR_SAMPLERATE_8;
 }
}
