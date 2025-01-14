
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mrb_int ;


 int FMINUS ;
 int FPLUS ;
 int FPREC ;
 int FSHARP ;
 int FSPACE ;
 int FWIDTH ;
 int FZERO ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
fmt_setup(char *buf, size_t size, int c, int flags, mrb_int width, mrb_int prec)
{
  char *end = buf + size;
  int n;

  *buf++ = '%';
  if (flags & FSHARP) *buf++ = '#';
  if (flags & FPLUS) *buf++ = '+';
  if (flags & FMINUS) *buf++ = '-';
  if (flags & FZERO) *buf++ = '0';
  if (flags & FSPACE) *buf++ = ' ';

  if (flags & FWIDTH) {
    n = snprintf(buf, end - buf, "%d", (int)width);
    buf += n;
  }

  if (flags & FPREC) {
    n = snprintf(buf, end - buf, ".%d", (int)prec);
    buf += n;
  }

  *buf++ = c;
  *buf = '\0';
}
