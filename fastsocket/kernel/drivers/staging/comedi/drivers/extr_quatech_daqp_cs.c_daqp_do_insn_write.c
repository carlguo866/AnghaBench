
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_info_t {scalar_t__ stop; } ;
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAQP_DIGITAL_IO ;
 int EIO ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int daqp_do_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 struct local_info_t *local = (struct local_info_t *)s->private;

 if (local->stop) {
  return -EIO;
 }

 outw(data[0] & 0xf, dev->iobase + DAQP_DIGITAL_IO);

 return 1;
}
