
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int flags; int options; } ;
struct input_ctx {struct window_pane* wp; } ;


 int PANE_REDRAW ;
 int PANE_STYLECHANGED ;
 int input_osc_parse_colour (char const*,int *,int *,int *) ;
 int log_debug (char*,char const*) ;
 int options_set_style (int ,char*,int,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int xsnprintf (char*,int,char*,int ,int ,int ) ;

__attribute__((used)) static void
input_osc_10(struct input_ctx *ictx, const char *p)
{
 struct window_pane *wp = ictx->wp;
 u_int r, g, b;
 char tmp[16];

 if (strcmp(p, "?") == 0)
  return;

 if (!input_osc_parse_colour(p, &r, &g, &b))
  goto bad;
 xsnprintf(tmp, sizeof tmp, "fg=#%02x%02x%02x", r, g, b);
 options_set_style(wp->options, "window-style", 1, tmp);
 options_set_style(wp->options, "window-active-style", 1, tmp);
 wp->flags |= (PANE_REDRAW|PANE_STYLECHANGED);

 return;

bad:
 log_debug("bad OSC 10: %s", p);
}
