
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INTFLOAT ;
typedef int INT64FLOAT ;


 int AAC_MUL31 (int const,int) ;

__attribute__((used)) static void hybrid2_re(INTFLOAT (*in)[2], INTFLOAT (*out)[32][2], const INTFLOAT filter[8], int len, int reverse)
{
    int i, j;
    for (i = 0; i < len; i++, in++) {
        INT64FLOAT re_in = AAC_MUL31(filter[6], in[6][0]);
        INT64FLOAT re_op = 0.0f;
        INT64FLOAT im_in = AAC_MUL31(filter[6], in[6][1]);
        INT64FLOAT im_op = 0.0f;
        for (j = 0; j < 6; j += 2) {
            re_op += (INT64FLOAT)filter[j+1] * (in[j+1][0] + in[12-j-1][0]);
            im_op += (INT64FLOAT)filter[j+1] * (in[j+1][1] + in[12-j-1][1]);
        }






        out[ reverse][i][0] = (INTFLOAT)(re_in + re_op);
        out[ reverse][i][1] = (INTFLOAT)(im_in + im_op);
        out[!reverse][i][0] = (INTFLOAT)(re_in - re_op);
        out[!reverse][i][1] = (INTFLOAT)(im_in - im_op);
    }
}
