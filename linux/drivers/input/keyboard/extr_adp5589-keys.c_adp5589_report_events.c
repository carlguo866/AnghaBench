
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adp5589_kpad {int * keycode; int input; TYPE_1__* var; int client; } ;
struct TYPE_2__ {int gpi_pin_base; int gpi_pin_end; } ;


 scalar_t__ ADP5589_5_FIFO_1 ;
 int KEY_EV_MASK ;
 int KEY_EV_PRESSED ;
 int adp5589_read (int ,scalar_t__) ;
 int adp5589_report_switches (struct adp5589_kpad*,int,int) ;
 int input_report_key (int ,int ,int) ;

__attribute__((used)) static void adp5589_report_events(struct adp5589_kpad *kpad, int ev_cnt)
{
 int i;

 for (i = 0; i < ev_cnt; i++) {
  int key = adp5589_read(kpad->client, ADP5589_5_FIFO_1 + i);
  int key_val = key & KEY_EV_MASK;

  if (key_val >= kpad->var->gpi_pin_base &&
      key_val <= kpad->var->gpi_pin_end) {
   adp5589_report_switches(kpad, key, key_val);
  } else {
   input_report_key(kpad->input,
      kpad->keycode[key_val - 1],
      key & KEY_EV_PRESSED);
  }
 }
}
