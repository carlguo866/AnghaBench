
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int s32 ;


 scalar_t__ __bss_fstart ;
 scalar_t__ __data_fstart ;
 scalar_t__ __text_fstart ;

s32 gdbstub_getoffsets(char **textaddr,char **dataaddr,char **bssaddr)
{
 *textaddr = (char*)((u32)__text_fstart - (u32)__text_fstart);
 *dataaddr = (char*)((u32)__data_fstart - (u32)__text_fstart);
 *bssaddr = (char*)((u32)__bss_fstart - (u32)__text_fstart);

 return 1;
}
