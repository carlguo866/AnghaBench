
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int state; int len_chanlist; int cancel; int do_cmd; int do_cmdtest; int insn_bits; int * range_table; int type; } ;
struct comedi_device {int irq; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; scalar_t__ iobase; int board_name; } ;
struct comedi_devconfig {int* options; } ;


 scalar_t__ AIO_IIRO_16_RELAY_0_7 ;
 scalar_t__ AIO_IIRO_16_RELAY_8_15 ;
 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int SDF_CMD_READ ;
 int SDF_LSAMPL ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int aio_iiro_16_cos ;
 int aio_iiro_16_cos_cancel ;
 int aio_iiro_16_cos_cmd ;
 int aio_iiro_16_cos_cmdtest ;
 int aio_iiro_16_di_insn_bits ;
 int aio_iiro_16_do_insn_bits ;
 int aio_iiro_enable_irq (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int,int) ;
 int inb (scalar_t__) ;
 int range_digital ;
 int request_irq (int,int ,int ,int ,struct comedi_device*) ;

__attribute__((used)) static int aio_iiro_16_attach(struct comedi_device *dev,
         struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x8);
 if (ret)
  return ret;

 aio_iiro_enable_irq(dev, 0);





 if ((1 << it->options[1]) & 0xdcfc) {
  ret = request_irq(it->options[1], aio_iiro_16_cos, 0,
      dev->board_name, dev);
  if (ret == 0)
   dev->irq = it->options[1];
 }

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = aio_iiro_16_do_insn_bits;


 s->state = inb(dev->iobase + AIO_IIRO_16_RELAY_0_7) |
     (inb(dev->iobase + AIO_IIRO_16_RELAY_8_15) << 8);


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = aio_iiro_16_di_insn_bits;
 if (dev->irq) {
  dev->read_subdev = s;
  s->subdev_flags |= SDF_CMD_READ | SDF_LSAMPL;
  s->len_chanlist = 1;
  s->do_cmdtest = aio_iiro_16_cos_cmdtest;
  s->do_cmd = aio_iiro_16_cos_cmd;
  s->cancel = aio_iiro_16_cos_cancel;
 }

 return 0;
}
