
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uchar_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_byte_array (int *,char const*,int *,int ) ;

void
fnvlist_add_byte_array(nvlist_t *nvl, const char *name, uchar_t *val, uint_t n)
{
 VERIFY0(nvlist_add_byte_array(nvl, name, val, n));
}
