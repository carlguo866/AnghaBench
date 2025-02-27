
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uchar ;


 int CC_EQ (char const*,int,char*) ;
 int ISALNUM (char) ;
 int ISALPHA (char) ;
 int ISBLANK (char) ;
 int ISCNTRL (char) ;
 int ISDIGIT (char) ;
 int ISGRAPH (char) ;
 int ISLOWER (char) ;
 int ISPRINT (char) ;
 int ISPUNCT (char) ;
 int ISSPACE (char) ;
 scalar_t__ ISUPPER (char) ;
 int ISXDIGIT (char) ;
 char NEGATE_CLASS ;
 char NEGATE_CLASS2 ;
 int WM_ABORT_ALL ;
 int WM_ABORT_TO_STARSTAR ;
 unsigned int WM_CASEFOLD ;
 int WM_MATCH ;
 int WM_NOMATCH ;
 unsigned int WM_PATHNAME ;
 int is_glob_special (char const) ;
 char* strchr (char*,char) ;
 char tolower (char) ;
 char toupper (char) ;

__attribute__((used)) static int dowild(const uchar *p, const uchar *text, unsigned int flags)
{
 uchar p_ch;
 const uchar *pattern = p;

 for ( ; (p_ch = *p) != '\0'; text++, p++) {
  int matched, match_slash, negated;
  uchar t_ch, prev_ch;
  if ((t_ch = *text) == '\0' && p_ch != '*')
   return WM_ABORT_ALL;
  if ((flags & WM_CASEFOLD) && ISUPPER(t_ch))
   t_ch = tolower(t_ch);
  if ((flags & WM_CASEFOLD) && ISUPPER(p_ch))
   p_ch = tolower(p_ch);
  switch (p_ch) {
  case '\\':


   p_ch = *++p;

  default:
   if (t_ch != p_ch)
    return WM_NOMATCH;
   continue;
  case '?':

   if ((flags & WM_PATHNAME) && t_ch == '/')
    return WM_NOMATCH;
   continue;
  case '*':
   if (*++p == '*') {
    const uchar *prev_p = p - 2;
    while (*++p == '*') {}
    if (!(flags & WM_PATHNAME))

     match_slash = 1;
    else if ((prev_p < pattern || *prev_p == '/') &&
        (*p == '\0' || *p == '/' ||
         (p[0] == '\\' && p[1] == '/'))) {
     if (p[0] == '/' &&
         dowild(p + 1, text, flags) == WM_MATCH)
      return WM_MATCH;
     match_slash = 1;
    } else
     match_slash = 0;
   } else

    match_slash = flags & WM_PATHNAME ? 0 : 1;
   if (*p == '\0') {


    if (!match_slash) {
     if (strchr((char*)text, '/') != ((void*)0))
      return WM_NOMATCH;
    }
    return WM_MATCH;
   } else if (!match_slash && *p == '/') {





    const char *slash = strchr((char*)text, '/');
    if (!slash)
     return WM_NOMATCH;
    text = (const uchar*)slash;

    break;
   }
   while (1) {
    if (t_ch == '\0')
     break;
    if (!is_glob_special(*p)) {
     p_ch = *p;
     if ((flags & WM_CASEFOLD) && ISUPPER(p_ch))
      p_ch = tolower(p_ch);
     while ((t_ch = *text) != '\0' &&
            (match_slash || t_ch != '/')) {
      if ((flags & WM_CASEFOLD) && ISUPPER(t_ch))
       t_ch = tolower(t_ch);
      if (t_ch == p_ch)
       break;
      text++;
     }
     if (t_ch != p_ch)
      return WM_NOMATCH;
    }
    if ((matched = dowild(p, text, flags)) != WM_NOMATCH) {
     if (!match_slash || matched != WM_ABORT_TO_STARSTAR)
      return matched;
    } else if (!match_slash && t_ch == '/')
     return WM_ABORT_TO_STARSTAR;
    t_ch = *++text;
   }
   return WM_ABORT_ALL;
  case '[':
   p_ch = *++p;





   negated = p_ch == NEGATE_CLASS ? 1 : 0;
   if (negated) {

    p_ch = *++p;
   }
   prev_ch = 0;
   matched = 0;
   do {
    if (!p_ch)
     return WM_ABORT_ALL;
    if (p_ch == '\\') {
     p_ch = *++p;
     if (!p_ch)
      return WM_ABORT_ALL;
     if (t_ch == p_ch)
      matched = 1;
    } else if (p_ch == '-' && prev_ch && p[1] && p[1] != ']') {
     p_ch = *++p;
     if (p_ch == '\\') {
      p_ch = *++p;
      if (!p_ch)
       return WM_ABORT_ALL;
     }
     if (t_ch <= p_ch && t_ch >= prev_ch)
      matched = 1;
     else if ((flags & WM_CASEFOLD) && ISLOWER(t_ch)) {
      uchar t_ch_upper = toupper(t_ch);
      if (t_ch_upper <= p_ch && t_ch_upper >= prev_ch)
       matched = 1;
     }
     p_ch = 0;
    } else if (p_ch == '[' && p[1] == ':') {
     const uchar *s;
     int i;
     for (s = p += 2; (p_ch = *p) && p_ch != ']'; p++) {}
     if (!p_ch)
      return WM_ABORT_ALL;
     i = p - s - 1;
     if (i < 0 || p[-1] != ':') {

      p = s - 2;
      p_ch = '[';
      if (t_ch == p_ch)
       matched = 1;
      continue;
     }
     if (CC_EQ(s,i, "alnum")) {
      if (ISALNUM(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "alpha")) {
      if (ISALPHA(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "blank")) {
      if (ISBLANK(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "cntrl")) {
      if (ISCNTRL(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "digit")) {
      if (ISDIGIT(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "graph")) {
      if (ISGRAPH(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "lower")) {
      if (ISLOWER(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "print")) {
      if (ISPRINT(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "punct")) {
      if (ISPUNCT(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "space")) {
      if (ISSPACE(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "upper")) {
      if (ISUPPER(t_ch))
       matched = 1;
      else if ((flags & WM_CASEFOLD) && ISLOWER(t_ch))
       matched = 1;
     } else if (CC_EQ(s,i, "xdigit")) {
      if (ISXDIGIT(t_ch))
       matched = 1;
     } else
      return WM_ABORT_ALL;
     p_ch = 0;
    } else if (t_ch == p_ch)
     matched = 1;
   } while (prev_ch = p_ch, (p_ch = *++p) != ']');
   if (matched == negated ||
       ((flags & WM_PATHNAME) && t_ch == '/'))
    return WM_NOMATCH;
   continue;
  }
 }

 return *text ? WM_NOMATCH : WM_MATCH;
}
