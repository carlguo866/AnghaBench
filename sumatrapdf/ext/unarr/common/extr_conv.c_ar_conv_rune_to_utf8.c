
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



size_t ar_conv_rune_to_utf8(wchar_t rune, char *out, size_t size)
{
    if (size < 1)
        return 0;
    if (rune < 0x0080) {
        *out++ = rune & 0x7F;
        return 1;
    }
    if (rune < 0x0800 && size >= 2) {
        *out++ = 0xC0 | ((rune >> 6) & 0x1F);
        *out++ = 0x80 | (rune & 0x3F);
        return 2;
    }
    if (size >= 3) {
        if ((0xD800 <= rune && rune <= 0xDFFF) || rune >= 0x10000)
            rune = 0xFFFD;
        *out++ = 0xE0 | ((rune >> 12) & 0x0F);
        *out++ = 0x80 | ((rune >> 6) & 0x3F);
        *out++ = 0x80 | (rune & 0x3F);
        return 3;
    }
    *out++ = '?';
    return 1;
}
