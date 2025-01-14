
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das08_private_struct {int dummy; } ;
struct das08_board_struct {int iosize; } ;
struct comedi_device {int iobase; struct das08_board_struct* board_ptr; } ;
struct comedi_devconfig {int * options; } ;


 int ENOMEM ;
 struct das08_private_struct* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int ) ;
 int das08_common_attach (struct comedi_device*,int ) ;

__attribute__((used)) static int das08_isa_attach(struct comedi_device *dev,
       struct comedi_devconfig *it)
{
 const struct das08_board_struct *board = dev->board_ptr;
 struct das08_private_struct *devpriv;
 int ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_request_region(dev, it->options[0], board->iosize);
 if (ret)
  return ret;

 return das08_common_attach(dev, dev->iobase);
}
