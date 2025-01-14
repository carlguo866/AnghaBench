
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int MSize ;
typedef int FILE ;


 int LUAL_BUFFERSIZE ;
 int * fgets (char*,int,int *) ;
 char* lj_buf_tmp (TYPE_1__*,int) ;
 int lj_gc_check (TYPE_1__*) ;
 int lj_str_new (TYPE_1__*,char*,size_t) ;
 int setstrV (TYPE_1__*,int ,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int io_file_readline(lua_State *L, FILE *fp, MSize chop)
{
  MSize m = LUAL_BUFFERSIZE, n = 0, ok = 0;
  char *buf;
  for (;;) {
    buf = lj_buf_tmp(L, m);
    if (fgets(buf+n, m-n, fp) == ((void*)0)) break;
    n += (MSize)strlen(buf+n);
    ok |= n;
    if (n && buf[n-1] == '\n') { n -= chop; break; }
    if (n >= m - 64) m += m;
  }
  setstrV(L, L->top++, lj_str_new(L, buf, (size_t)n));
  lj_gc_check(L);
  return (int)ok;
}
