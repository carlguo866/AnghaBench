
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_on_new_line () ;
 int rl_redisplay () ;

void edit_redraw(void)
{
 rl_on_new_line();
 rl_redisplay();
}
