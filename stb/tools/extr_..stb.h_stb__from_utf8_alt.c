
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb__wchar ;


 int * stb_from_utf8 (int *,char const*,int) ;

stb__wchar *stb__from_utf8_alt(const char *str)
{
   static stb__wchar buffer[4096];
   return stb_from_utf8(buffer, str, 4096);
}
