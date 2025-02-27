
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int die_errno (char*) ;
 int fprintf (int ,char*,unsigned char) ;
 int fputc (unsigned char,int ) ;
 int fputs (char*,int ) ;
 int fwrite (unsigned char*,int,int,int ) ;
 int stdout ;
 char* utf8_replace_character ;
 scalar_t__ xread (int ,unsigned char*,int) ;

int cmd__xml_encode(int argc, const char **argv)
{
 unsigned char buf[1024], tmp[4], *tmp2 = ((void*)0);
 ssize_t cur = 0, len = 1, remaining = 0;
 unsigned char ch;

 for (;;) {
  if (++cur == len) {
   len = xread(0, buf, sizeof(buf));
   if (!len)
    return 0;
   if (len < 0)
    die_errno("Could not read <stdin>");
   cur = 0;
  }
  ch = buf[cur];

  if (tmp2) {
   if ((ch & 0xc0) != 0x80) {
    fputs(utf8_replace_character, stdout);
    tmp2 = ((void*)0);
    cur--;
    continue;
   }
   *tmp2 = ch;
   tmp2++;
   if (--remaining == 0) {
    fwrite(tmp, tmp2 - tmp, 1, stdout);
    tmp2 = ((void*)0);
   }
   continue;
  }

  if (!(ch & 0x80)) {

   if (ch == '&')
    fputs("&amp;", stdout);
   else if (ch == '\'')
    fputs("&apos;", stdout);
   else if (ch == '"')
    fputs("&quot;", stdout);
   else if (ch == '<')
    fputs("&lt;", stdout);
   else if (ch == '>')
    fputs("&gt;", stdout);
   else if (ch >= 0x20)
    fputc(ch, stdout);
   else if (ch == 0x09 || ch == 0x0a || ch == 0x0d)
    fprintf(stdout, "&#x%02x;", ch);
   else
    fputs(utf8_replace_character, stdout);
  } else if ((ch & 0xe0) == 0xc0) {

   tmp[0] = ch;
   remaining = 1;
   tmp2 = tmp + 1;
  } else if ((ch & 0xf0) == 0xe0) {

   tmp[0] = ch;
   remaining = 2;
   tmp2 = tmp + 1;
  } else if ((ch & 0xf8) == 0xf0) {

   tmp[0] = ch;
   remaining = 3;
   tmp2 = tmp + 1;
  } else
   fputs(utf8_replace_character, stdout);
 }

 return 0;
}
