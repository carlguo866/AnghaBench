
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int UIDrawTextBuffer () ;
 scalar_t__ WX_REG ;
 scalar_t__ WY_REG ;
 int time ;
 scalar_t__ win_dest_pos_x ;
 scalar_t__ win_dest_pos_y ;
 scalar_t__ win_pos_x ;
 scalar_t__ win_pos_y ;
 int win_speed ;

void UIUpdate_b()
{
  UBYTE interval;

  if (win_speed == 5 && ((time & 0x7) != 0))
  {
    return;
  }
  else if (win_speed == 4 && ((time & 0x3) != 0))
  {
    return;
  }
  else if (win_speed == 3 && ((time & 0x1) != 0))
  {
    return;
  }

  if (win_speed == 1)
  {
    interval = 2;
  }
  else
  {
    interval = 1;
  }

  if (win_pos_x != win_dest_pos_x)
  {
    if (win_pos_x < win_dest_pos_x)
    {
      win_pos_x += interval;
    }
    else
    {
      win_pos_x -= interval;
    }
  }

  if (win_pos_y != win_dest_pos_y)
  {
    if (win_pos_y < win_dest_pos_y)
    {
      win_pos_y += interval;
    }
    else
    {
      win_pos_y -= interval;
    }
  }
  else
  {
    UIDrawTextBuffer();
  }

  WX_REG = win_pos_x + 7;
  WY_REG = win_pos_y;
}
