
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char SEQ_MIDIPUTC ;
 unsigned int SEQ_WAIT ;
 unsigned int jiffies ;
 unsigned int prev_input_time ;
 int seq_copy_to_input (unsigned char*,int) ;
 unsigned int seq_time ;

__attribute__((used)) static void sequencer_midi_input(int dev, unsigned char data)
{
 unsigned int tstamp;
 unsigned char event_rec[4];

 if (data == 0xfe)
  return;

 tstamp = jiffies - seq_time;

 if (tstamp != prev_input_time)
 {
  tstamp = (tstamp << 8) | SEQ_WAIT;
  seq_copy_to_input((unsigned char *) &tstamp, 4);
  prev_input_time = tstamp;
 }
 event_rec[0] = SEQ_MIDIPUTC;
 event_rec[1] = data;
 event_rec[2] = dev;
 event_rec[3] = 0;

 seq_copy_to_input(event_rec, 4);
}
