
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int write_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_2__ {unsigned int ao_count; scalar_t__ main_iobase; int * ao_bounce_buffer; } ;


 scalar_t__ ADC_QUEUE_CLEAR_REG ;
 scalar_t__ DAC_BUFFER_CLEAR_REG ;
 scalar_t__ DAC_FIFO_REG ;
 int DAC_FIFO_SIZE ;
 unsigned int DMA_BUFFER_SIZE ;
 scalar_t__ TRIG_COUNT ;
 int bytes_in_sample ;
 unsigned int cfc_read_array_from_buffer (int ,int *,unsigned int) ;
 int dma_start_sync (struct comedi_device*,int ) ;
 int load_ao_dma (struct comedi_device*,struct comedi_cmd const*) ;
 unsigned int load_ao_dma_buffer (struct comedi_device*,struct comedi_cmd const*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int prep_ao_dma(struct comedi_device *dev, const struct comedi_cmd *cmd)
{
 unsigned int num_bytes;
 int i;



 writew(0, priv(dev)->main_iobase + ADC_QUEUE_CLEAR_REG);
 writew(0, priv(dev)->main_iobase + DAC_BUFFER_CLEAR_REG);

 num_bytes = (DAC_FIFO_SIZE / 2) * bytes_in_sample;
 if (cmd->stop_src == TRIG_COUNT &&
     num_bytes / bytes_in_sample > priv(dev)->ao_count)
  num_bytes = priv(dev)->ao_count * bytes_in_sample;
 num_bytes = cfc_read_array_from_buffer(dev->write_subdev,
            priv(dev)->ao_bounce_buffer,
            num_bytes);
 for (i = 0; i < num_bytes / bytes_in_sample; i++) {
  writew(priv(dev)->ao_bounce_buffer[i],
         priv(dev)->main_iobase + DAC_FIFO_REG);
 }
 priv(dev)->ao_count -= num_bytes / bytes_in_sample;
 if (cmd->stop_src == TRIG_COUNT && priv(dev)->ao_count == 0)
  return 0;
 num_bytes = load_ao_dma_buffer(dev, cmd);
 if (num_bytes == 0)
  return -1;
 if (num_bytes >= DMA_BUFFER_SIZE) ;
 load_ao_dma(dev, cmd);

 dma_start_sync(dev, 0);

 return 0;
}
