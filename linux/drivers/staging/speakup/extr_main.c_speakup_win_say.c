
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct vc_data {scalar_t__ vc_origin; int vc_size_row; } ;


 int MSG_NO_WINDOW ;
 int say_from_to (struct vc_data*,scalar_t__,scalar_t__,int) ;
 int spk_msg_get (int ) ;
 int synth_printf (char*,int ) ;
 int win_bottom ;
 int win_left ;
 int win_right ;
 int win_start ;
 int win_top ;

__attribute__((used)) static void speakup_win_say(struct vc_data *vc)
{
 u_long start, end, from, to;

 if (win_start < 2) {
  synth_printf("%s\n", spk_msg_get(MSG_NO_WINDOW));
  return;
 }
 start = vc->vc_origin + (win_top * vc->vc_size_row);
 end = vc->vc_origin + (win_bottom * vc->vc_size_row);
 while (start <= end) {
  from = start + (win_left * 2);
  to = start + (win_right * 2);
  say_from_to(vc, from, to, 1);
  start += vc->vc_size_row;
 }
}
