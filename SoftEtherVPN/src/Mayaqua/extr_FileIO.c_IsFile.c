
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int IsFileW (int *) ;

bool IsFile(char *name)
{
 wchar_t *name_w = CopyStrToUni(name);
 bool ret = IsFileW(name_w);

 Free(name_w);

 return ret;
}
