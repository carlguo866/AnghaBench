
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_DOWN ;
 int KEY_LEFT ;
 int KEY_NPAGE ;
 int KEY_PPAGE ;
 int KEY_RIGHT ;
 int KEY_SF ;
 int KEY_SR ;
 int KEY_UP ;
 scalar_t__ key_is_start_sequence (int) ;

int
key_is_command_char (int ch)
{
  return ((ch == KEY_NPAGE) || (ch == KEY_PPAGE)
   || (ch == KEY_LEFT) || (ch == KEY_RIGHT)
   || (ch == KEY_UP) || (ch == KEY_DOWN)
   || (ch == KEY_SF) || (ch == KEY_SR)
   || (ch == (int)'\f') || key_is_start_sequence (ch));
}
