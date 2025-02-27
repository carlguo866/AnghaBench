
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char ucs2_t ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ mbstate_t ;


 int MB_CUR_MAX ;
 int wcrtomb (char*,char const,TYPE_1__*) ;

__attribute__((used)) static size_t _FAT_directory_ucs2tombs (char* dst, const ucs2_t* src, size_t len)
{
   mbstate_t ps = {0};
   size_t count = 0;
   int bytes;
   char buff[MB_CUR_MAX];
   int i;

   while (count < len - 1 && *src != '\0')
   {
      bytes = wcrtomb (buff, *src, &ps);
      if (bytes < 0)
         return -1;
      if (count + bytes < len && bytes > 0)
      {
         for (i = 0; i < bytes; i++)
            *dst++ = buff[i];
         src++;
         count += bytes;
      }
      else
         break;
   }
   *dst = L'\0';

   return count;
}
