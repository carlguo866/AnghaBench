
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; int scan_begin_arg; int convert_arg; int scan_end_arg; int chanlist_len; int stop_arg; int flags; } ;


 void* MAX_SPEED ;
 void* MIN_SPEED ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_ROUND_MASK ;
 int TRIG_TIMER ;
 int s626_ns_to_timer (int*,int) ;

__attribute__((used)) static int s626_ai_cmdtest(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0;
 int tmp;
 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | TRIG_INT | TRIG_EXT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;

 tmp = cmd->scan_begin_src;
 cmd->scan_begin_src &= TRIG_TIMER | TRIG_EXT | TRIG_FOLLOW;
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;

 tmp = cmd->convert_src;
 cmd->convert_src &= TRIG_TIMER | TRIG_EXT | TRIG_NOW;
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





 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->scan_begin_src != TRIG_EXT
     && cmd->scan_begin_src != TRIG_FOLLOW)
  err++;
 if (cmd->convert_src != TRIG_TIMER &&
     cmd->convert_src != TRIG_EXT && cmd->convert_src != TRIG_NOW)
  err++;
 if (cmd->stop_src != TRIG_COUNT && cmd->stop_src != TRIG_NONE)
  err++;

 if (err)
  return 2;



 if (cmd->start_src != TRIG_EXT && cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->start_src == TRIG_EXT && cmd->start_arg > 39) {
  cmd->start_arg = 39;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_EXT && cmd->scan_begin_arg > 39) {
  cmd->scan_begin_arg = 39;
  err++;
 }

 if (cmd->convert_src == TRIG_EXT && cmd->convert_arg > 39) {
  cmd->convert_arg = 39;
  err++;
 }



 if (cmd->scan_begin_src == TRIG_TIMER) {
  if (cmd->scan_begin_arg < 200000) {
   cmd->scan_begin_arg = 200000;
   err++;
  }
  if (cmd->scan_begin_arg > 2000000000) {
   cmd->scan_begin_arg = 2000000000;
   err++;
  }
 } else {







 }
 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < 200000) {
   cmd->convert_arg = 200000;
   err++;
  }
  if (cmd->convert_arg > 2000000000) {
   cmd->convert_arg = 2000000000;
   err++;
  }
 } else {






 }

 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }
 if (cmd->stop_src == TRIG_COUNT) {
  if (cmd->stop_arg > 0x00ffffff) {
   cmd->stop_arg = 0x00ffffff;
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
  s626_ns_to_timer((int *)&cmd->scan_begin_arg,
     cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->scan_begin_arg)
   err++;
 }
 if (cmd->convert_src == TRIG_TIMER) {
  tmp = cmd->convert_arg;
  s626_ns_to_timer((int *)&cmd->convert_arg,
     cmd->flags & TRIG_ROUND_MASK);
  if (tmp != cmd->convert_arg)
   err++;
  if (cmd->scan_begin_src == TRIG_TIMER &&
      cmd->scan_begin_arg <
      cmd->convert_arg * cmd->scan_end_arg) {
   cmd->scan_begin_arg =
       cmd->convert_arg * cmd->scan_end_arg;
   err++;
  }
 }

 if (err)
  return 4;

 return 0;
}
