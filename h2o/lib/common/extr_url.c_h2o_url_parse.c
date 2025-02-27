
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scheme; } ;
typedef TYPE_1__ h2o_url_t ;


 size_t SIZE_MAX ;
 int parse_authority_and_path (char const*,char const*,TYPE_1__*) ;
 char* parse_scheme (char const*,char const*,int *) ;
 size_t strlen (char const*) ;

int h2o_url_parse(const char *url, size_t url_len, h2o_url_t *parsed)
{
    const char *url_end, *p;

    if (url_len == SIZE_MAX)
        url_len = strlen(url);
    url_end = url + url_len;


    if ((p = parse_scheme(url, url_end, &parsed->scheme)) == ((void*)0))
        return -1;


    if (!(url_end - p >= 2 && p[0] == '/' && p[1] == '/'))
        return -1;
    p += 2;

    return parse_authority_and_path(p, url_end, parsed);
}
