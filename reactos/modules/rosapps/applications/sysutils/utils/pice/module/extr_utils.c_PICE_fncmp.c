
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 scalar_t__ IsAddressValid (int) ;

ULONG PICE_fncmp(char* s1,char* s2)
{
  ULONG result=1;

 if( IsAddressValid((ULONG)s1) && (*s1 == '_' || *s1 == '@'))
   s1++;

 if( IsAddressValid((ULONG)s2) && (*s2 == '_' || *s2 == '@'))
   s2++;

 while(IsAddressValid((ULONG)s1) && *s1 &&
          IsAddressValid((ULONG)s2) && *s2 )
    {
  if( (*s1 != *s2) || *s1=='@' || *s2=='@' )
    break;
        s1++;
        s2++;
    }

 if((*s1==0 || *s1=='@') && (*s2==0 || *s2 =='@')){
        result=0;
 }
 return result;
}
