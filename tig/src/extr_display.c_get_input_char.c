
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* bytes; int value; } ;
struct TYPE_4__ {int multibytes; } ;
struct key {TYPE_2__ data; TYPE_1__ modifiers; } ;
struct TYPE_6__ {int file; } ;


 int die (char*,int) ;
 int getc (int ) ;
 scalar_t__ is_script_executing () ;
 TYPE_3__ opt_tty ;
 int read_script (struct key*) ;
 int strlen (int*) ;

int
get_input_char(void)
{
 if (is_script_executing()) {
  static struct key key;
  static int bytes_pos;

  if (!key.modifiers.multibytes || bytes_pos >= strlen(key.data.bytes)) {
   if (!read_script(&key))
    return 0;
   bytes_pos = 0;
  }

  if (!key.modifiers.multibytes) {
   if (key.data.value < 128)
    return key.data.value;
   die("Only ASCII control characters can be used in prompts: %d", key.data.value);
  }

  return key.data.bytes[bytes_pos++];
 }

 return getc(opt_tty.file);
}
