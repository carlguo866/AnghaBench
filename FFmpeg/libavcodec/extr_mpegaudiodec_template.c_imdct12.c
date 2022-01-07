
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUINTFLOAT ;
typedef int INTFLOAT ;


 int C3 ;
 int C4 ;
 int C5 ;
 int C6 ;
 int MULH3 (int,int ,int) ;
 int SHR (int,int) ;

__attribute__((used)) static void imdct12(INTFLOAT *out, SUINTFLOAT *in)
{
    SUINTFLOAT in0, in1, in2, in3, in4, in5, t1, t2;

    in0 = in[0*3];
    in1 = in[1*3] + in[0*3];
    in2 = in[2*3] + in[1*3];
    in3 = in[3*3] + in[2*3];
    in4 = in[4*3] + in[3*3];
    in5 = in[5*3] + in[4*3];
    in5 += in3;
    in3 += in1;

    in2 = MULH3(in2, C3, 2);
    in3 = MULH3(in3, C3, 4);

    t1 = in0 - in4;
    t2 = MULH3(in1 - in5, C4, 2);

    out[ 7] =
    out[10] = t1 + t2;
    out[ 1] =
    out[ 4] = t1 - t2;

    in0 += SHR(in4, 1);
    in4 = in0 + in2;
    in5 += 2*in1;
    in1 = MULH3(in5 + in3, C5, 1);
    out[ 8] =
    out[ 9] = in4 + in1;
    out[ 2] =
    out[ 3] = in4 - in1;

    in0 -= in2;
    in5 = MULH3(in5 - in3, C6, 2);
    out[ 0] =
    out[ 5] = in0 - in5;
    out[ 6] =
    out[11] = in0 + in5;
}
