
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cent_tuning ;
 int* semitone_tuning ;

unsigned long compute_finetune(unsigned long base_freq, int bend, int range,
   int vibrato_cents)
{
 unsigned long amount;
 int negative, semitones, cents, multiplier = 1;

 if (!bend)
  return base_freq;
 if (!range)
  return base_freq;

 if (!base_freq)
  return base_freq;

 if (range >= 8192)
  range = 8192;

 bend = bend * range / 8192;
 bend += vibrato_cents;

 if (!bend)
  return base_freq;

 negative = bend < 0 ? 1 : 0;

 if (bend < 0)
  bend *= -1;
 if (bend > range)
  bend = range;





 while (bend > 2399)
 {
  multiplier *= 4;
  bend -= 2400;
 }

 semitones = bend / 100;
 if (semitones > 99)
  semitones = 99;
 cents = bend % 100;

 amount = (int) (semitone_tuning[semitones] * multiplier * cent_tuning[cents]) / 10000;

 if (negative)
  return (base_freq * 10000) / amount;
 else
  return (base_freq * amount) / 10000;
}
