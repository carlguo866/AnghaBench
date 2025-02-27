
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int convert_arg; int scan_begin_arg; int chanlist_len; int scan_end_arg; int stop_arg; } ;


 int TRIG_COUNT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int nano_per_micro ;

__attribute__((used)) static int waveform_ai_cmdtest(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_NOW | TRIG_TIMER;
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;

 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;

 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT | TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;





 if (cmd->convert_src != TRIG_NOW && cmd->convert_src != TRIG_TIMER)
  err++;
 if (cmd->stop_src != TRIG_COUNT && cmd->stop_src != TRIG_NONE)
  err++;

 if (err)
  return 2;



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }
 if (cmd->convert_src == TRIG_NOW) {
  if (cmd->convert_arg != 0) {
   cmd->convert_arg = 0;
   err++;
  }
 }
 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg < nano_per_micro) {
   cmd->scan_begin_arg = nano_per_micro;
   err++;
  }
  if (cmd->convert_src == TRIG_TIMER &&
      cmd->scan_begin_arg <
      cmd->convert_arg * cmd->chanlist_len) {
   cmd->scan_begin_arg =
       cmd->convert_arg * cmd->chanlist_len;
   err++;
  }
 }




 if (!cmd->chanlist_len) {
  cmd->chanlist_len = 1;
  err++;
 }
 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (cmd->stop_src == TRIG_COUNT) {
  if (!cmd->stop_arg) {
   cmd->stop_arg = 1;
   err++;
  }
 } else {
  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 if (err)
  return 3;



 if (cmd->scan_begin_src == TRIG_TIMER) {
  tmp = cmd->scan_begin_arg;

  cmd->scan_begin_arg =
      nano_per_micro * ((tmp +
           (nano_per_micro / 2)) / nano_per_micro);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }
 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;

  cmd->convert_arg =
      nano_per_micro * ((tmp +
           (nano_per_micro / 2)) / nano_per_micro);
  if (tmp != cmd->convert_arg)
   err++;
 }

 if (err)
  return 4;

 return 0;
}
