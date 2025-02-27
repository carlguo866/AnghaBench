
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int int32_t ;



int
gethex(int32_t *vp, char *p, int n)
{
    u_long v;
    int digit;

    for (v = 0; n > 0; n--) {
        if (*p == 0)
            return (0);
        if (*p >= '0' && *p <= '9')
            digit = *p - '0';
        else if (*p >= 'a' && *p <= 'f')
            digit = *p - 'a' + 10;
        else if (*p >= 'A' && *p <= 'F')
            digit = *p - 'A' + 10;
        else
            return (0);

        v <<= 4;
        v |= digit;
        p++;
    }
    *vp = v;
    return (1);
}
