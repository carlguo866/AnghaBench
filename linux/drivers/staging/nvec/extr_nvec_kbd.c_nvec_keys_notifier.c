
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int input; } ;


 scalar_t__ KEY_CAPSLOCK ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int NVEC_3BYTES ;
 unsigned long NVEC_KB_EVT ;
 int NVEC_VAR_SIZE ;
 scalar_t__** code_tabs ;
 int input_report_key (int ,scalar_t__,int) ;
 int input_sync (int ) ;
 TYPE_1__ keys_dev ;
 int nvec_kbd_toggle_led () ;

__attribute__((used)) static int nvec_keys_notifier(struct notifier_block *nb,
         unsigned long event_type, void *data)
{
 int code, state;
 unsigned char *msg = data;

 if (event_type == NVEC_KB_EVT) {
  int _size = (msg[0] & (3 << 5)) >> 5;


  if (_size == NVEC_VAR_SIZE)
   return NOTIFY_STOP;

  if (_size == NVEC_3BYTES)
   msg++;

  code = msg[1] & 0x7f;
  state = msg[1] & 0x80;

  if (code_tabs[_size][code] == KEY_CAPSLOCK && state)
   nvec_kbd_toggle_led();

  input_report_key(keys_dev.input, code_tabs[_size][code],
     !state);
  input_sync(keys_dev.input);

  return NOTIFY_STOP;
 }

 return NOTIFY_DONE;
}
