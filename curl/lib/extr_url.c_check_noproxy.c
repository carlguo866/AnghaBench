
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ strcasecompare (char*,char const*) ;
 char* strchr (char const*,char const) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecompare (char const*,char const*,size_t) ;

__attribute__((used)) static bool check_noproxy(const char *name, const char *no_proxy)
{





  if(no_proxy && no_proxy[0]) {
    size_t tok_start;
    size_t tok_end;
    const char *separator = ", ";
    size_t no_proxy_len;
    size_t namelen;
    char *endptr;
    if(strcasecompare("*", no_proxy)) {
      return TRUE;
    }



    no_proxy_len = strlen(no_proxy);
    if(name[0] == '[') {

      endptr = strchr(name, ']');
      if(!endptr)
        return FALSE;
      name++;
      namelen = endptr - name;
    }
    else
      namelen = strlen(name);

    for(tok_start = 0; tok_start < no_proxy_len; tok_start = tok_end + 1) {
      while(tok_start < no_proxy_len &&
            strchr(separator, no_proxy[tok_start]) != ((void*)0)) {

        ++tok_start;
      }

      if(tok_start == no_proxy_len)
        break;

      for(tok_end = tok_start; tok_end < no_proxy_len &&
            strchr(separator, no_proxy[tok_end]) == ((void*)0); ++tok_end)

        ;





      if(no_proxy[tok_start] == '.')
        ++tok_start;

      if((tok_end - tok_start) <= namelen) {

        const char *checkn = name + namelen - (tok_end - tok_start);
        if(strncasecompare(no_proxy + tok_start, checkn,
                           tok_end - tok_start)) {
          if((tok_end - tok_start) == namelen || *(checkn - 1) == '.') {



            return TRUE;
          }
        }
      }
    }

  }

  return FALSE;
}
