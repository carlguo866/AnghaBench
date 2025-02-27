
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numbuttons; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 int BUTTON1_PRESSED ;
 int BUTTON2_PRESSED ;
 int BUTTON3_PRESSED ;
 int BUTTON4_PRESSED ;
 int FROM_LEFT_1ST_BUTTON_PRESSED ;
 int FROM_LEFT_2ND_BUTTON_PRESSED ;
 int FROM_LEFT_3RD_BUTTON_PRESSED ;
 int FROM_LEFT_4TH_BUTTON_PRESSED ;
 int RIGHTMOST_BUTTON_PRESSED ;
 int SetSP () ;

__attribute__((used)) static int
decode_mouse(TERMINAL_CONTROL_BLOCK * TCB, int mask)
{
    SCREEN *sp;
    int result = 0;

    AssertTCB();
    SetSP();

    if (mask & FROM_LEFT_1ST_BUTTON_PRESSED)
 result |= BUTTON1_PRESSED;
    if (mask & FROM_LEFT_2ND_BUTTON_PRESSED)
 result |= BUTTON2_PRESSED;
    if (mask & FROM_LEFT_3RD_BUTTON_PRESSED)
 result |= BUTTON3_PRESSED;
    if (mask & FROM_LEFT_4TH_BUTTON_PRESSED)
 result |= BUTTON4_PRESSED;

    if (mask & RIGHTMOST_BUTTON_PRESSED) {
 switch (TCB->info.numbuttons) {
 case 1:
     result |= BUTTON1_PRESSED;
     break;
 case 2:
     result |= BUTTON2_PRESSED;
     break;
 case 3:
     result |= BUTTON3_PRESSED;
     break;
 case 4:
     result |= BUTTON4_PRESSED;
     break;
 }
    }

    return result;
}
