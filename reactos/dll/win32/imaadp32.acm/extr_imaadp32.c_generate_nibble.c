
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* IMA_IndexTable ;
 unsigned int* IMA_StepTable ;
 int clamp_sample (int*) ;
 int clamp_step_index (int*) ;

__attribute__((used)) static inline unsigned char generate_nibble(int in, int* stepIndex, int* sample)
{
    int effdiff, diff = in - *sample;
    unsigned step;
    unsigned char code;

    if (diff < 0)
    {
        diff = -diff;
        code = 8;
    }
    else
    {
        code = 0;
    }

    step = IMA_StepTable[*stepIndex];
    effdiff = (step >> 3);
    if (diff >= step)
    {
        code |= 4;
        diff -= step;
        effdiff += step;
    }
    step >>= 1;
    if (diff >= step)
    {
        code |= 2;
        diff -= step;
        effdiff += step;
    }
    step >>= 1;
    if (diff >= step)
    {
        code |= 1;
        effdiff += step;
    }
    if (code & 8) *sample -= effdiff;
    else *sample += effdiff;
    clamp_sample(sample);
    *stepIndex += IMA_IndexTable[code];
    clamp_step_index(stepIndex);
    return code;
}
