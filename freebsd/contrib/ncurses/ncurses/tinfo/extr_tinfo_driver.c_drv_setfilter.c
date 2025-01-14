
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int carriage_return ;
 scalar_t__ clear_screen ;
 scalar_t__ cursor_address ;
 scalar_t__ cursor_down ;
 int cursor_home ;
 scalar_t__ cursor_up ;
 scalar_t__ parm_down_cursor ;
 scalar_t__ parm_up_cursor ;
 scalar_t__ row_address ;

__attribute__((used)) static void
drv_setfilter(TERMINAL_CONTROL_BLOCK * TCB)
{
    AssertTCB();

    clear_screen = 0;
    cursor_down = parm_down_cursor = 0;
    cursor_address = 0;
    cursor_up = parm_up_cursor = 0;
    row_address = 0;
    cursor_home = carriage_return;
}
