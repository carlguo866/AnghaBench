
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv_pcm3724 {scalar_t__ dio_2; scalar_t__ dio_1; } ;
struct comedi_device {unsigned long iobase; int n_subdevices; TYPE_2__* subdevices; int board_name; int minor; scalar_t__ private; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_4__ {int insn_config; } ;
struct TYPE_3__ {unsigned int io_range; int numofports; int name; } ;


 int EIO ;
 int ENOMEM ;
 int SIZE_8255 ;
 int alloc_private (struct comedi_device*,int) ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int printk (char*,...) ;
 int request_region (unsigned long,unsigned int,char*) ;
 int subdev_3724_insn_config ;
 int subdev_8255_cb ;
 int subdev_8255_init (struct comedi_device*,TYPE_2__*,int ,unsigned long) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcm3724_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 unsigned long iobase;
 unsigned int iorange;
 int ret, i, n_subdevices;

 iobase = it->options[0];
 iorange = this_board->io_range;

 ret = alloc_private(dev, sizeof(struct priv_pcm3724));
 if (ret < 0)
  return -ENOMEM;

 ((struct priv_pcm3724 *)(dev->private))->dio_1 = 0;
 ((struct priv_pcm3724 *)(dev->private))->dio_2 = 0;

 printk("comedi%d: pcm3724: board=%s, 0x%03lx ", dev->minor,
        this_board->name, iobase);
 if (!iobase || !request_region(iobase, iorange, "pcm3724")) {
  printk("I/O port conflict\n");
  return -EIO;
 }

 dev->iobase = iobase;
 dev->board_name = this_board->name;
 printk("\n");

 n_subdevices = this_board->numofports;

 ret = alloc_subdevices(dev, n_subdevices);
 if (ret < 0)
  return ret;

 for (i = 0; i < dev->n_subdevices; i++) {
  subdev_8255_init(dev, dev->subdevices + i, subdev_8255_cb,
     (unsigned long)(dev->iobase + SIZE_8255 * i));
  ((dev->subdevices) + i)->insn_config = subdev_3724_insn_config;
 };
 return 0;
}
