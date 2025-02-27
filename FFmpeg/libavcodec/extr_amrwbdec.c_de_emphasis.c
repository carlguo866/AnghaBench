
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMRWB_SFR_SIZE ;

__attribute__((used)) static void de_emphasis(float *out, float *in, float m, float mem[1])
{
    int i;

    out[0] = in[0] + m * mem[0];

    for (i = 1; i < AMRWB_SFR_SIZE; i++)
         out[i] = in[i] + out[i - 1] * m;

    mem[0] = out[AMRWB_SFR_SIZE - 1];
}
