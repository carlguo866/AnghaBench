
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sl_value ;
typedef int sl_symboltab ;


 int cf_sha224 ;
 int * pbkdf2_fn (int *,int *,int *,int *) ;

__attribute__((used)) static sl_value * pbkdf2_sha224(sl_value *self, sl_value *args, sl_symboltab *tab)
{
  return pbkdf2_fn(self, args, tab, &cf_sha224);
}
