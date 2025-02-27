
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int int32_t ;


 int MAC64 (scalar_t__,int,int) ;

__attribute__((used)) static void ac3_sum_square_butterfly_int32_c(int64_t sum[4],
                                             const int32_t *coef0,
                                             const int32_t *coef1,
                                             int len)
{
    int i;

    sum[0] = sum[1] = sum[2] = sum[3] = 0;

    for (i = 0; i < len; i++) {
        int lt = coef0[i];
        int rt = coef1[i];
        int md = lt + rt;
        int sd = lt - rt;
        MAC64(sum[0], lt, lt);
        MAC64(sum[1], rt, rt);
        MAC64(sum[2], md, md);
        MAC64(sum[3], sd, sd);
    }
}
