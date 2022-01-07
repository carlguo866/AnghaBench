
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_md5_sum (int*,int volatile*,int) ;
 int print_md5 (int*) ;

int main(void)
{
    uint8_t md5val[16];
    int i;
    volatile uint8_t in[1000];


    for (i = 0; i < 1000; i++)
        in[i] = i * i;
    av_md5_sum(md5val, in, 1000);
    print_md5(md5val);
    av_md5_sum(md5val, in, 63);
    print_md5(md5val);
    av_md5_sum(md5val, in, 64);
    print_md5(md5val);
    av_md5_sum(md5val, in, 65);
    print_md5(md5val);
    for (i = 0; i < 1000; i++)
        in[i] = i % 127;
    av_md5_sum(md5val, in, 999);
    print_md5(md5val);

    return 0;
}
