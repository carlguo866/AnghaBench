
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int strmbs ;
typedef int mbstate_t ;
typedef int bt_strmbs ;



 int FNM_CASEFOLD ;
 int FNM_LEADING_DIR ;
 int FNM_NOESCAPE ;
 int FNM_NOMATCH ;
 int FNM_PATHNAME ;
 int FNM_PERIOD ;
 int MB_LEN_MAX ;



 size_t mbrtowc (int*,char const*,int ,int *) ;
 int memset (int *,int ,int) ;
 int rangematch (char const*,int,int,char**,int *) ;
 char* strchr (char const*,char) ;
 int towlower (int) ;

__attribute__((used)) static int
fnmatch1(const char *pattern, const char *string, const char *stringstart,
    int flags, mbstate_t patmbs, mbstate_t strmbs)
{
 const char *bt_pattern, *bt_string;
 mbstate_t bt_patmbs, bt_strmbs;
 char *newp;
 char c;
 wchar_t pc, sc;
 size_t pclen, sclen;

 bt_pattern = bt_string = ((void*)0);
 for (;;) {
  pclen = mbrtowc(&pc, pattern, MB_LEN_MAX, &patmbs);
  if (pclen == (size_t)-1 || pclen == (size_t)-2)
   return (FNM_NOMATCH);
  pattern += pclen;
  sclen = mbrtowc(&sc, string, MB_LEN_MAX, &strmbs);
  if (sclen == (size_t)-1 || sclen == (size_t)-2) {
   sc = (unsigned char)*string;
   sclen = 1;
   memset(&strmbs, 0, sizeof(strmbs));
  }
  switch (pc) {
  case 131:
   if ((flags & FNM_LEADING_DIR) && sc == '/')
    return (0);
   if (sc == 131)
    return (0);
   goto backtrack;
  case '?':
   if (sc == 131)
    return (FNM_NOMATCH);
   if (sc == '/' && (flags & FNM_PATHNAME))
    goto backtrack;
   if (sc == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    goto backtrack;
   string += sclen;
   break;
  case '*':
   c = *pattern;

   while (c == '*')
    c = *++pattern;

   if (sc == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    goto backtrack;


   if (c == 131)
    if (flags & FNM_PATHNAME)
     return ((flags & FNM_LEADING_DIR) ||
         strchr(string, '/') == ((void*)0) ?
         0 : FNM_NOMATCH);
    else
     return (0);
   else if (c == '/' && flags & FNM_PATHNAME) {
    if ((string = strchr(string, '/')) == ((void*)0))
     return (FNM_NOMATCH);
    break;
   }







   bt_pattern = pattern, bt_patmbs = patmbs;
   bt_string = string, bt_strmbs = strmbs;
   break;
  case '[':
   if (sc == 131)
    return (FNM_NOMATCH);
   if (sc == '/' && (flags & FNM_PATHNAME))
    goto backtrack;
   if (sc == '.' && (flags & FNM_PERIOD) &&
       (string == stringstart ||
       ((flags & FNM_PATHNAME) && *(string - 1) == '/')))
    goto backtrack;

   switch (rangematch(pattern, sc, flags, &newp,
       &patmbs)) {
   case 130:
    goto norm;
   case 129:
    pattern = newp;
    break;
   case 128:
    goto backtrack;
   }
   string += sclen;
   break;
  case '\\':
   if (!(flags & FNM_NOESCAPE)) {
    pclen = mbrtowc(&pc, pattern, MB_LEN_MAX,
        &patmbs);
    if (pclen == 0 || pclen == (size_t)-1 ||
        pclen == (size_t)-2)
     return (FNM_NOMATCH);
    pattern += pclen;
   }

  default:
  norm:
   string += sclen;
   if (pc == sc)
    ;
   else if ((flags & FNM_CASEFOLD) &&
     (towlower(pc) == towlower(sc)))
    ;
   else {
  backtrack:






    if (bt_pattern == ((void*)0))
     return (FNM_NOMATCH);
    sclen = mbrtowc(&sc, bt_string, MB_LEN_MAX,
        &bt_strmbs);
    if (sclen == (size_t)-1 ||
        sclen == (size_t)-2) {
     sc = (unsigned char)*bt_string;
     sclen = 1;
     memset(&bt_strmbs, 0,
         sizeof(bt_strmbs));
    }
    if (sc == 131)
     return (FNM_NOMATCH);
    if (sc == '/' && flags & FNM_PATHNAME)
     return (FNM_NOMATCH);
    bt_string += sclen;
    pattern = bt_pattern, patmbs = bt_patmbs;
    string = bt_string, strmbs = bt_strmbs;
   }
   break;
  }
 }

}
