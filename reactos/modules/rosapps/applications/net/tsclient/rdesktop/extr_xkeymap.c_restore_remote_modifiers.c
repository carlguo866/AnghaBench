
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_8__ {int modifiers; scalar_t__ scancode; } ;
typedef TYPE_2__ key_translation ;
struct TYPE_7__ {int saved_remote_modifier_state; } ;
struct TYPE_9__ {TYPE_1__ xkeymap; } ;
typedef TYPE_3__ RDPCLIENT ;


 int ensure_remote_modifiers (TYPE_3__*,int ,TYPE_2__) ;
 scalar_t__ is_modifier (int ) ;

void
restore_remote_modifiers(RDPCLIENT * This, uint32 ev_time, uint8 scancode)
{
 key_translation dummy;

 if (is_modifier(scancode))
  return;

 dummy.scancode = 0;
 dummy.modifiers = This->xkeymap.saved_remote_modifier_state;
 ensure_remote_modifiers(This, ev_time, dummy);
}
