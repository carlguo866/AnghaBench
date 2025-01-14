
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ emit_expansion (char const*,int,int,int,int,char***,size_t*) ;
 scalar_t__ find_brace (char const*,int*,int*) ;

__attribute__((used)) static int
brace_expand_one(const char *pattern, char ***patternsp, size_t *npatternsp,
    int *expanded, int *invalid)
{
 int i;
 int in_bracket, brace_start, brace_end, brace_level;
 int sel_start, sel_end;

 *invalid = *expanded = 0;

 if (find_brace(pattern, &brace_start, &brace_end) != 0) {
  *invalid = 1;
  return 0;
 } else if (brace_start == -1)
  return 0;

 in_bracket = brace_level = 0;
 for (i = sel_start = brace_start + 1; i < brace_end; i++) {
  switch (pattern[i]) {
  case '{':
   if (in_bracket)
    break;
   brace_level++;
   break;
  case '}':
   if (in_bracket)
    break;
   brace_level--;
   break;
  case '[':
   in_bracket = 1;
   break;
  case ']':
   in_bracket = 0;
   break;
  case '\\':
   if (i < brace_end - 1)
    i++;
   break;
  }
  if (pattern[i] == ',' || i == brace_end - 1) {
   if (in_bracket || brace_level > 0)
    continue;



   sel_end = (i == brace_end - 1) ? brace_end : i;
   if (emit_expansion(pattern, brace_start, brace_end,
       sel_start, sel_end, patternsp, npatternsp) != 0)
    return -1;

   sel_start = i + 1;
   continue;
  }
 }
 if (in_bracket || brace_level > 0) {
  *invalid = 1;
  return 0;
 }

 *expanded = 1;
 return 0;
}
