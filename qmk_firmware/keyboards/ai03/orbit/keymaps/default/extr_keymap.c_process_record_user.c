
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int SEND_STRING (char*) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
 switch (keycode) {
  case 128:
   if (record->event.pressed)
   {

    SEND_STRING("https://kb.ai03.me/redir/orbit");
   }
   else
   {

   }
   break;
  case 129:
   if (record->event.pressed)
   {

    SEND_STRING("00");
   }
   else
   {

   }
   break;
  }
  return 1;
}
