
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_mod_uintp2 (int,int) ;

__attribute__((used)) static int est_alpha_diff(int cur, int prev, int abits)
{
    const int dbits = (abits == 8) ? 4 : 7;
    const int dsize = 1 << dbits - 1;
    int diff = cur - prev;

    diff = av_mod_uintp2(diff, abits);
    if (diff >= (1 << abits) - dsize)
        diff -= 1 << abits;
    if (diff < -dsize || diff > dsize || !diff)
        return abits + 1;
    else
        return dbits + 1;
}
