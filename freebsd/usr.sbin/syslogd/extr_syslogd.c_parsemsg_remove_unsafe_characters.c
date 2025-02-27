
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isascii (int) ;
 scalar_t__ iscntrl (int) ;
 scalar_t__ mask_C1 ;

__attribute__((used)) static void
parsemsg_remove_unsafe_characters(const char *in, char *out, size_t outlen)
{
 char *q;
 int c;

 q = out;
 while ((c = (unsigned char)*in++) != '\0' && q < out + outlen - 4) {
  if (mask_C1 && (c & 0x80) && c < 0xA0) {
   c &= 0x7F;
   *q++ = 'M';
   *q++ = '-';
  }
  if (isascii(c) && iscntrl(c)) {
   if (c == '\n') {
    *q++ = ' ';
   } else if (c == '\t') {
    *q++ = '\t';
   } else {
    *q++ = '^';
    *q++ = c ^ 0100;
   }
  } else {
   *q++ = c;
  }
 }
 *q = '\0';
}
