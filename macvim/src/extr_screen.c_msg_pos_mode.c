
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Rows ;
 scalar_t__ msg_col ;
 scalar_t__ msg_row ;

__attribute__((used)) static void
msg_pos_mode()
{
    msg_col = 0;
    msg_row = Rows - 1;
}
