
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ channel; } ;
typedef TYPE_1__ KBDKeyEvent ;


 scalar_t__ keyboardChannel ;

void kb_disconnection_callback(KBDKeyEvent *key)
{
 keyboardChannel = keyboardChannel - (key->channel + 0x01);
}
