
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_2__ {scalar_t__ text_only; scalar_t__ text_width; scalar_t__ text_height; } ;


 int A_NORMAL ;
 int MARGIN ;
 int MAX (int,int) ;
 TYPE_1__ dialog_state ;
 char* dlg_print_line (int *,int *,char const*,int,int,int*) ;
 int getyx (int *,int,int) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
justify_text(WINDOW *win,
      const char *prompt,
      int limit_y,
      int limit_x,
      int *high, int *wide)
{
    chtype attr = A_NORMAL;
    int x = (2 * MARGIN);
    int y = MARGIN;
    int max_x = 2;
    int lm = (2 * MARGIN);
    int rm = limit_x;
    int bm = limit_y;
    int last_y = 0, last_x = 0;

    dialog_state.text_height = 0;
    dialog_state.text_width = 0;
    if (dialog_state.text_only || win) {
 rm -= (2 * MARGIN);
 bm -= (2 * MARGIN);
    }
    if (prompt == 0)
 prompt = "";

    if (win != 0)
 getyx(win, last_y, last_x);
    while (y <= bm && *prompt) {
 x = lm;

 if (*prompt == '\n') {
     while (*prompt == '\n' && y < bm) {
  if (*(prompt + 1) != '\0') {
      ++y;
      if (win != 0)
   (void) wmove(win, y, lm);
  }
  prompt++;
     }
 } else if (win != 0)
     (void) wmove(win, y, lm);

 if (*prompt) {
     prompt = dlg_print_line(win, &attr, prompt, lm, rm, &x);
     if (win != 0)
  getyx(win, last_y, last_x);
 }
 if (*prompt) {
     ++y;
     if (win != 0)
  (void) wmove(win, y, lm);
 }
 max_x = MAX(max_x, x);
    }

    if (win != 0)
 (void) wmove(win, last_y, last_x);


    if (high != 0)
 *high = y;
    if (wide != 0)
 *wide = max_x;
}
