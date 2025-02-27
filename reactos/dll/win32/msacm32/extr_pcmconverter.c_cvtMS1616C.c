
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int R16 (unsigned char const*) ;
 int W16 (unsigned char*,int ) ;

__attribute__((used)) static void cvtMS1616C(const DWORD srcRate, const unsigned char *src, DWORD *nsrc,
                       const DWORD dstRate, unsigned char *dst, DWORD *ndst)
{
    DWORD error = srcRate / 2;
    DWORD maxSrc = *nsrc, maxDst = *ndst;
    *ndst = 0;
    for (*nsrc = 0; *nsrc < maxSrc; (*nsrc)++) {
        error += dstRate;
        while (error > srcRate) {
            if (*ndst == maxDst)
                return;
            (*ndst)++;
            error -= srcRate;

            W16(dst, R16(src)); dst += 2;
            W16(dst, R16(src)); dst += 2;
        }
        src += 2;
    }
}
