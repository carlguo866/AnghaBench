
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;

__attribute__((used)) static int
pg_uhc_mblen(const unsigned char *s)
{
 int len;

 if (IS_HIGHBIT_SET(*s))
  len = 2;
 else
  len = 1;
 return len;
}
