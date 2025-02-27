
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int asn1_check_eoc(const unsigned char **in, long len)
{
    const unsigned char *p;
    if (len < 2)
        return 0;
    p = *in;
    if (!p[0] && !p[1]) {
        *in += 2;
        return 1;
    }
    return 0;
}
