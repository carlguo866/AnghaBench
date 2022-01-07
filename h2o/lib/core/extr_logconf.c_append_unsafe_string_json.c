
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *append_unsafe_string_json(char *pos, const char *src, size_t len)
{
    const char *src_end = src + len;

    for (; src != src_end; ++src) {
        if (' ' <= *src && *src < 0x7e) {
            if (*src == '"' || *src == '\\')
                *pos++ = '\\';
            *pos++ = *src;
        } else {
            *pos++ = '\\';
            *pos++ = 'u';
            *pos++ = '0';
            *pos++ = '0';
            *pos++ = ("0123456789abcdef")[(*src >> 4) & 0xf];
            *pos++ = ("0123456789abcdef")[*src & 0xf];
        }
    }

    return pos;
}
