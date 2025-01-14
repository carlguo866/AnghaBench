
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int GI_LOAD ;
 int NITIO_CMD_REG (unsigned int) ;
 size_t NITIO_LOADA_REG (unsigned int) ;
 size_t NITIO_LOADB_REG (unsigned int) ;
 unsigned int ni_tio_next_load_register (struct ni_gpct*) ;
 int ni_tio_set_bits_transient (struct ni_gpct*,int ,int ,int ,int ) ;
 int ni_tio_write (struct ni_gpct*,unsigned int,size_t) ;

int ni_tio_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct ni_gpct *counter = s->private;
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int channel = CR_CHAN(insn->chanspec);
 unsigned int cidx = counter->counter_index;
 unsigned int chip = counter->chip_index;
 unsigned int load_reg;
 unsigned int load_val;

 if (insn->n < 1)
  return 0;
 load_val = data[insn->n - 1];
 switch (channel) {
 case 0:
  load_reg = ni_tio_next_load_register(counter);
  ni_tio_write(counter, load_val, load_reg);
  ni_tio_set_bits_transient(counter, NITIO_CMD_REG(cidx),
       0, 0, GI_LOAD);

  ni_tio_write(counter, counter_dev->regs[chip][load_reg],
        load_reg);
  break;
 case 1:
  counter_dev->regs[chip][NITIO_LOADA_REG(cidx)] = load_val;
  ni_tio_write(counter, load_val, NITIO_LOADA_REG(cidx));
  break;
 case 2:
  counter_dev->regs[chip][NITIO_LOADB_REG(cidx)] = load_val;
  ni_tio_write(counter, load_val, NITIO_LOADB_REG(cidx));
  break;
 default:
  return -EINVAL;
 }
 return insn->n;
}
