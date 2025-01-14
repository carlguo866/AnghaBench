
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WHITESPACE ;
 scalar_t__ memchr (char const*,int ,size_t) ;
 char* memory_startswith_no_case (void const*,size_t,char const*) ;
 scalar_t__ strchr (int ,char const) ;
 char* strndup (char const*,size_t) ;

int curl_header_strdup(const void *contents, size_t sz, const char *field, char **value) {
        const char *p;
        char *s;

        p = memory_startswith_no_case(contents, sz, field);
        if (!p)
                return 0;

        sz -= p - (const char*) contents;

        if (memchr(p, 0, sz))
                return 0;


        while (sz > 0 && strchr(WHITESPACE, p[0])) {
                p++;
                sz--;
        }


        while (sz > 0 && strchr(WHITESPACE, p[sz-1]))
                sz--;

        s = strndup(p, sz);
        if (!s)
                return -ENOMEM;

        *value = s;
        return 1;
}
