
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {size_t patternlen; char const* origin; int no; int token; int field; int pattern; } ;
typedef enum grep_pat_token { ____Placeholder_grep_pat_token } grep_pat_token ;
typedef enum grep_header_field { ____Placeholder_grep_header_field } grep_header_field ;


 struct grep_pat* xcalloc (int,int) ;
 int xmemdupz (char const*,size_t) ;

__attribute__((used)) static struct grep_pat *create_grep_pat(const char *pat, size_t patlen,
     const char *origin, int no,
     enum grep_pat_token t,
     enum grep_header_field field)
{
 struct grep_pat *p = xcalloc(1, sizeof(*p));
 p->pattern = xmemdupz(pat, patlen);
 p->patternlen = patlen;
 p->origin = origin;
 p->no = no;
 p->token = t;
 p->field = field;
 return p;
}
