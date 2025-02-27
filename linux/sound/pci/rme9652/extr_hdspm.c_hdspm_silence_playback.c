
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int period_bytes; void* playback_buffer; } ;


 int HDSPM_CHANNEL_BUFFER_BYTES ;
 int HDSPM_MAX_CHANNELS ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void hdspm_silence_playback(struct hdspm *hdspm)
{
 int i;
 int n = hdspm->period_bytes;
 void *buf = hdspm->playback_buffer;

 if (!buf)
  return;

 for (i = 0; i < HDSPM_MAX_CHANNELS; i++) {
  memset(buf, 0, n);
  buf += HDSPM_CHANNEL_BUFFER_BYTES;
 }
}
