
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LARGE ;
 int LEFT ;
 int PLUS ;
 int REMOVEHEX ;
 int SIGN ;
 int SPACE ;
 int SPECIAL ;
 int ZEROPAD ;
 size_t do_div (long long*,int) ;

__attribute__((used)) static char *
number(char * buf, char * end, long long num, int base, int size, int precision, int type)
{
 char c,sign,tmp[66];
 const char *digits;
 const char *small_digits = "0123456789abcdefghijklmnopqrstuvwxyz";
 const char *large_digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 int i;

 digits = (type & LARGE) ? large_digits : small_digits;
 if (type & LEFT)
  type &= ~ZEROPAD;
 if (base < 2 || base > 36)
  return 0;
 c = (type & ZEROPAD) ? '0' : ' ';
 sign = 0;
 if (type & SIGN) {
  if (num < 0) {
   sign = '-';
   num = -num;
   size--;
  } else if (type & PLUS) {
   sign = '+';
   size--;
  } else if (type & SPACE) {
   sign = ' ';
   size--;
  }
 }

 if ((type & SPECIAL) && ((type & REMOVEHEX) == 0)) {
  if (base == 16)
   size -= 2;

 }
 i = 0;
 if ((num == 0) && (precision !=0))
  tmp[i++] = '0';
 else while (num != 0)
  tmp[i++] = digits[do_div(&num,base)];
 if (i > precision)
  precision = i;
 size -= precision;
 if (!(type&(ZEROPAD+LEFT))) {
  while(size-->0) {
   if (buf <= end)
    *buf = ' ';
   ++buf;
  }
 }
 if (sign) {
  if (buf <= end)
   *buf = sign;
  ++buf;
 }

 if ((type & SPECIAL) && ((type & REMOVEHEX) == 0)) {
   if (base==16) {
   if (buf <= end)
    *buf = '0';
   ++buf;
   if (buf <= end)
    *buf = digits[33];
   ++buf;
  }
 }

 if (!(type & LEFT)) {
  while (size-- > 0) {
   if (buf <= end)
    *buf = c;
   ++buf;
  }
 }
 while (i < precision--) {
  if (buf <= end)
   *buf = '0';
  ++buf;
 }
 while (i-- > 0) {
  if (buf <= end)
   *buf = tmp[i];
  ++buf;
 }
 while (size-- > 0) {
  if (buf <= end)
   *buf = ' ';
  ++buf;
 }

 return buf;
}
