
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __match_charclass (char const*,char const,char const**) ;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static bool __match_glob(const char *str, const char *pat, bool ignore_space)
{
 while (*str && *pat && *pat != '*') {
  if (ignore_space) {

   if (isspace(*str)) {
    str++;
    continue;
   }
   if (isspace(*pat)) {
    pat++;
    continue;
   }
  }
  if (*pat == '?') {
   str++;
   pat++;
   continue;
  } else if (*pat == '[')
   if (__match_charclass(pat + 1, *str, &pat)) {
    str++;
    continue;
   } else
    return 0;
  else if (*pat == '\\')
   pat++;
  if (*str++ != *pat++)
   return 0;
 }

 if (*pat == '*') {
  while (*pat == '*')
   pat++;
  if (!*pat)
   return 1;
  while (*str)
   if (__match_glob(str++, pat, ignore_space))
    return 1;
 }
 return !*str && !*pat;
}
