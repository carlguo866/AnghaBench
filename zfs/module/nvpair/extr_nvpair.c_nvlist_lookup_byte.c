
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;
typedef int nvlist_t ;


 int DATA_TYPE_BYTE ;
 int nvlist_lookup_common (int *,char const*,int ,int *,int *) ;

int
nvlist_lookup_byte(nvlist_t *nvl, const char *name, uchar_t *val)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_BYTE, ((void*)0), val));
}
