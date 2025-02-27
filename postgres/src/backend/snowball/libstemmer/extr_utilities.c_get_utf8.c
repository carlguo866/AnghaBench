
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;



__attribute__((used)) static int get_utf8(const symbol * p, int c, int l, int * slot) {
    int b0, b1, b2;
    if (c >= l) return 0;
    b0 = p[c++];
    if (b0 < 0xC0 || c == l) {
        *slot = b0;
        return 1;
    }
    b1 = p[c++] & 0x3F;
    if (b0 < 0xE0 || c == l) {
        *slot = (b0 & 0x1F) << 6 | b1;
        return 2;
    }
    b2 = p[c++] & 0x3F;
    if (b0 < 0xF0 || c == l) {
        *slot = (b0 & 0xF) << 12 | b1 << 6 | b2;
        return 3;
    }
    *slot = (b0 & 0xE) << 18 | b1 << 12 | b2 << 6 | (p[c] & 0x3F);
    return 4;
}
