
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMRWB_SFR_SIZE ;

__attribute__((used)) static void pitch_enhancer(float *fixed_vector, float voice_fac)
{
    int i;
    float cpe = 0.125 * (1 + voice_fac);
    float last = fixed_vector[0];

    fixed_vector[0] -= cpe * fixed_vector[1];

    for (i = 1; i < AMRWB_SFR_SIZE - 1; i++) {
        float cur = fixed_vector[i];

        fixed_vector[i] -= cpe * (last + fixed_vector[i + 1]);
        last = cur;
    }

    fixed_vector[AMRWB_SFR_SIZE - 1] -= cpe * last;
}
