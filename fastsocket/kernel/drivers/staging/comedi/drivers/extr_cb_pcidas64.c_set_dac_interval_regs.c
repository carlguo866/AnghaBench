
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int flags; int scan_begin_arg; } ;
struct TYPE_2__ {scalar_t__ main_iobase; } ;


 scalar_t__ DAC_SAMPLE_INTERVAL_LOWER_REG ;
 scalar_t__ DAC_SAMPLE_INTERVAL_UPPER_REG ;
 scalar_t__ TRIG_TIMER ;
 int comedi_error (struct comedi_device*,char*) ;
 unsigned int get_ao_divisor (int ,int ) ;
 unsigned int max_counter_value ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void set_dac_interval_regs(struct comedi_device *dev,
      const struct comedi_cmd *cmd)
{
 unsigned int divisor;

 if (cmd->scan_begin_src != TRIG_TIMER)
  return;

 divisor = get_ao_divisor(cmd->scan_begin_arg, cmd->flags);
 if (divisor > max_counter_value) {
  comedi_error(dev, "bug! ao divisor too big");
  divisor = max_counter_value;
 }
 writew(divisor & 0xffff,
        priv(dev)->main_iobase + DAC_SAMPLE_INTERVAL_LOWER_REG);
 writew((divisor >> 16) & 0xff,
        priv(dev)->main_iobase + DAC_SAMPLE_INTERVAL_UPPER_REG);
}
