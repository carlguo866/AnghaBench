
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_ymfpci_capture_open (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_ymfpci_capture_rec_open(struct snd_pcm_substream *substream)
{
 return snd_ymfpci_capture_open(substream, 0);
}
