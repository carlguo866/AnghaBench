
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _utf8_to_unicode (int *,char const*,size_t) ;
 int logprintf (char*,...) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void strdump(const char *e, const char *p, int ewidth, int utf8)
{
 const char *q = p;

 logprintf("      %*s = ", ewidth, e);
 if (p == ((void*)0)) {
  logprintf("NULL\n");
  return;
 }
 logprintf("\"");
 while (*p != '\0') {
  unsigned int c = 0xff & *p++;
  switch (c) {
  case '\a': logprintf("\\a"); break;
  case '\b': logprintf("\\b"); break;
  case '\n': logprintf("\\n"); break;
  case '\r': logprintf("\\r"); break;
  default:
   if (c >= 32 && c < 127)
    logprintf("%c", c);
   else
    logprintf("\\x%02X", c);
  }
 }
 logprintf("\"");
 logprintf(" (length %d)", q == ((void*)0) ? -1 : (int)strlen(q));




 if (utf8) {
  size_t len;
  uint32_t uc;
  int n;
  int cnt = 0;

  p = q;
  len = strlen(p);
  logprintf(" [");
  while ((n = _utf8_to_unicode(&uc, p, len)) > 0) {
   if (p != q)
    logprintf(" ");
   logprintf("%04X", uc);
   p += n;
   len -= n;
   cnt++;
  }
  logprintf("]");
  logprintf(" (count %d", cnt);
  if (n < 0) {
   logprintf(",unknown %d bytes", len);
  }
  logprintf(")");

 }
 logprintf("\n");
}
