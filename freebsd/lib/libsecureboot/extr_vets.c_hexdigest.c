
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
hexdigest(char *buf, size_t bufsz, unsigned char *foo, size_t foo_len)
{
 char const hex2ascii[] = "0123456789abcdef";
 size_t i;


 if (bufsz < (2 * foo_len) + 2)
  return (((void*)0));

 for (i = 0; i < foo_len; i++) {
  buf[i * 2] = hex2ascii[foo[i] >> 4];
  buf[i * 2 + 1] = hex2ascii[foo[i] & 0x0f];
 }

 buf[i * 2] = 0x0A;
 buf[i * 2 + 1] = '\0';

 return (buf);
}
