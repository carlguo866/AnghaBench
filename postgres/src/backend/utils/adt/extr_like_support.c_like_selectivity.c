
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double Selectivity ;


 double ANY_CHAR_SEL ;
 double FIXED_CHAR_SEL ;
 double FULL_WILDCARD_SEL ;

__attribute__((used)) static Selectivity
like_selectivity(const char *patt, int pattlen, bool case_insensitive)
{
 Selectivity sel = 1.0;
 int pos;


 for (pos = 0; pos < pattlen; pos++)
 {
  if (patt[pos] != '%' && patt[pos] != '_')
   break;
 }

 for (; pos < pattlen; pos++)
 {

  if (patt[pos] == '%')
   sel *= FULL_WILDCARD_SEL;
  else if (patt[pos] == '_')
   sel *= ANY_CHAR_SEL;
  else if (patt[pos] == '\\')
  {

   pos++;
   if (pos >= pattlen)
    break;
   sel *= FIXED_CHAR_SEL;
  }
  else
   sel *= FIXED_CHAR_SEL;
 }

 if (sel > 1.0)
  sel = 1.0;
 return sel;
}
