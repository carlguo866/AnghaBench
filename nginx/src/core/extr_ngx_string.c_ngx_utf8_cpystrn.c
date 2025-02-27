
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ngx_utf8_decode (int**,size_t) ;

u_char *
ngx_utf8_cpystrn(u_char *dst, u_char *src, size_t n, size_t len)
{
    u_char c, *next;

    if (n == 0) {
        return dst;
    }

    while (--n) {

        c = *src;
        *dst = c;

        if (c < 0x80) {

            if (c != '\0') {
                dst++;
                src++;
                len--;

                continue;
            }

            return dst;
        }

        next = src;

        if (ngx_utf8_decode(&next, len) > 0x10ffff) {

            break;
        }

        while (src < next) {
            *dst++ = *src++;
            len--;
        }
    }

    *dst = '\0';

    return dst;
}
