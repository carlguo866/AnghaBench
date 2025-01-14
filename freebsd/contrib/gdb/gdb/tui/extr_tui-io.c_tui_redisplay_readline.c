
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_6__ {int start_line; int curch; int cur_line; } ;
struct TYPE_7__ {TYPE_2__ command_info; } ;
struct TYPE_5__ {int * handle; } ;
struct TYPE_8__ {TYPE_3__ detail; TYPE_1__ generic; } ;


 scalar_t__ CTRL_CHAR (unsigned char) ;
 unsigned char RUBOUT ;
 TYPE_4__* TUI_CMD_WIN ;
 scalar_t__ TUI_ONE_COMMAND_MODE ;
 scalar_t__ TUI_SINGLE_KEY_MODE ;
 char UNCTRL (unsigned char) ;
 int fflush (int ) ;
 int getyx (int *,int,int) ;
 int rl_end ;
 scalar_t__* rl_line_buffer ;
 int rl_point ;
 int stdout ;
 scalar_t__ tui_current_key_mode ;
 char* tui_rl_saved_prompt ;
 int tui_set_key_mode (scalar_t__) ;
 int waddch (int *,unsigned char) ;
 int wclrtobot (int *) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

void
tui_redisplay_readline (void)
{
  int prev_col;
  int height;
  int col, line;
  int c_pos;
  int c_line;
  int in;
  WINDOW *w;
  char *prompt;
  int start_line;



  if (tui_current_key_mode == TUI_ONE_COMMAND_MODE && rl_end == 0)
    tui_set_key_mode (TUI_SINGLE_KEY_MODE);

  if (tui_current_key_mode == TUI_SINGLE_KEY_MODE)
    prompt = "";
  else
    prompt = tui_rl_saved_prompt;

  c_pos = -1;
  c_line = -1;
  w = TUI_CMD_WIN->generic.handle;
  start_line = TUI_CMD_WIN->detail.command_info.start_line;
  wmove (w, start_line, 0);
  prev_col = 0;
  height = 1;
  for (in = 0; prompt && prompt[in]; in++)
    {
      waddch (w, prompt[in]);
      getyx (w, line, col);
      if (col < prev_col)
        height++;
      prev_col = col;
    }
  for (in = 0; in < rl_end; in++)
    {
      unsigned char c;

      c = (unsigned char) rl_line_buffer[in];
      if (in == rl_point)
 {
          getyx (w, c_line, c_pos);
 }

      if (CTRL_CHAR (c) || c == RUBOUT)
 {
          waddch (w, '^');
          waddch (w, CTRL_CHAR (c) ? UNCTRL (c) : '?');
 }
      else
 {
          waddch (w, c);
 }
      if (c == '\n')
        {
          getyx (w, TUI_CMD_WIN->detail.command_info.start_line,
                 TUI_CMD_WIN->detail.command_info.curch);
        }
      getyx (w, line, col);
      if (col < prev_col)
        height++;
      prev_col = col;
    }
  wclrtobot (w);
  getyx (w, TUI_CMD_WIN->detail.command_info.start_line,
         TUI_CMD_WIN->detail.command_info.curch);
  if (c_line >= 0)
    {
      wmove (w, c_line, c_pos);
      TUI_CMD_WIN->detail.command_info.cur_line = c_line;
      TUI_CMD_WIN->detail.command_info.curch = c_pos;
    }
  TUI_CMD_WIN->detail.command_info.start_line -= height - 1;

  wrefresh (w);
  fflush(stdout);
}
