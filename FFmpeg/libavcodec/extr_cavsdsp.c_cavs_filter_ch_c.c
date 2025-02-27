
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int loop_filter_c1 (int *,int ,int,int,int) ;
 int loop_filter_c2 (int *,int ,int,int) ;

__attribute__((used)) static void cavs_filter_ch_c(uint8_t *d, ptrdiff_t stride, int alpha, int beta, int tc,
                             int bs1, int bs2)
{
    int i;
    if(bs1==2)
        for(i=0;i<8;i++)
            loop_filter_c2(d + i,stride,alpha,beta);
    else {
        if(bs1)
            for(i=0;i<4;i++)
                loop_filter_c1(d + i,stride,alpha,beta,tc);
        if (bs2)
            for(i=4;i<8;i++)
                loop_filter_c1(d + i,stride,alpha,beta,tc);
    }
}
