
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float map(float x, float in_min, float in_max, float out_min, float out_max)
{
    double slope, output;

    slope = 1.0 * (out_max - out_min) / (in_max - in_min);
    output = out_min + slope * (x - in_min);

    return (float)output;
}
