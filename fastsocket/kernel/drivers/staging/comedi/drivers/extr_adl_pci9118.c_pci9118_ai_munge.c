
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ai16bits; scalar_t__ usedma; } ;


 short be16_to_cpu (short) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void pci9118_ai_munge(struct comedi_device *dev,
        struct comedi_subdevice *s, void *data,
        unsigned int num_bytes,
        unsigned int start_chan_index)
{
 unsigned int i, num_samples = num_bytes / sizeof(short);
 short *array = data;

 for (i = 0; i < num_samples; i++) {
  if (devpriv->usedma)
   array[i] = be16_to_cpu(array[i]);
  if (devpriv->ai16bits) {
   array[i] ^= 0x8000;
  } else {
   array[i] = (array[i] >> 4) & 0x0fff;
  }
 }
}
