
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDEA_KEY_SCHEDULE ;


 int IDEA_encrypt (unsigned long*,int *) ;
 int l2n (unsigned long,...) ;
 int n2l (unsigned char*,unsigned long) ;

void IDEA_ofb64_encrypt(const unsigned char *in, unsigned char *out,
                        long length, IDEA_KEY_SCHEDULE *schedule,
                        unsigned char *ivec, int *num)
{
    register unsigned long v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned char d[8];
    register char *dp;
    unsigned long ti[2];
    unsigned char *iv;
    int save = 0;

    iv = (unsigned char *)ivec;
    n2l(iv, v0);
    n2l(iv, v1);
    ti[0] = v0;
    ti[1] = v1;
    dp = (char *)d;
    l2n(v0, dp);
    l2n(v1, dp);
    while (l--) {
        if (n == 0) {
            IDEA_encrypt((unsigned long *)ti, schedule);
            dp = (char *)d;
            t = ti[0];
            l2n(t, dp);
            t = ti[1];
            l2n(t, dp);
            save++;
        }
        *(out++) = *(in++) ^ d[n];
        n = (n + 1) & 0x07;
    }
    if (save) {
        v0 = ti[0];
        v1 = ti[1];
        iv = (unsigned char *)ivec;
        l2n(v0, iv);
        l2n(v1, iv);
    }
    t = v0 = v1 = ti[0] = ti[1] = 0;
    *num = n;
}
