
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* __dvd_errortable ;

__attribute__((used)) static u8 err2num(u32 errorcode)
{
 u32 i;

 i=0;
 while(i<18) {
  if(errorcode==__dvd_errortable[i]) return i;
  i++;
 }
 if(errorcode<0x00100000 || errorcode>0x00100008) return 29;

 return 17;
}
