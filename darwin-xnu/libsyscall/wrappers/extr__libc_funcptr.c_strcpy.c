
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* strcpy ) (char*,char const*) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 char* stub1 (char*,char const*) ;

__attribute__((visibility("hidden")))
char *
strcpy(char * restrict dst, const char * restrict src)
{
 return _libkernel_string_functions->strcpy(dst, src);
}
