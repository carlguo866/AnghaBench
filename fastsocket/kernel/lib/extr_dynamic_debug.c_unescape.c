
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isodigit (char) ;

__attribute__((used)) static char *unescape(char *str)
{
 char *in = str;
 char *out = str;

 while (*in) {
  if (*in == '\\') {
   if (in[1] == '\\') {
    *out++ = '\\';
    in += 2;
    continue;
   } else if (in[1] == 't') {
    *out++ = '\t';
    in += 2;
    continue;
   } else if (in[1] == 'n') {
    *out++ = '\n';
    in += 2;
    continue;
   } else if (isodigit(in[1]) &&
            isodigit(in[2]) &&
            isodigit(in[3])) {
    *out++ = ((in[1] - '0')<<6) |
              ((in[2] - '0')<<3) |
              (in[3] - '0');
    in += 4;
    continue;
   }
  }
  *out++ = *in++;
 }
 *out = '\0';

 return str;
}
