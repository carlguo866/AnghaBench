
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
hexdump (unsigned char *buf, int len)
{
 int i;
 for (i=0; i<len; i++) {
  printf("%02x", buf[i]);
 }
 printf("\n");
}
