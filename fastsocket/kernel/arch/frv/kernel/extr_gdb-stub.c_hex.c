
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hex(unsigned char ch)
{
 if (ch >= 'a' && ch <= 'f')
  return ch-'a'+10;
 if (ch >= '0' && ch <= '9')
  return ch-'0';
 if (ch >= 'A' && ch <= 'F')
  return ch-'A'+10;
 return -1;
}
