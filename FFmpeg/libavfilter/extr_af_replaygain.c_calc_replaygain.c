
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HISTOGRAM_SLOTS ;
 float av_clipf (float,double,double) ;

__attribute__((used)) static float calc_replaygain(uint32_t *histogram)
{
    uint32_t loud_count = 0, total_windows = 0;
    float gain;
    int i;

    for (i = 0; i < HISTOGRAM_SLOTS; i++)
        total_windows += histogram [i];

    while (i--)
        if ((loud_count += histogram [i]) * 20 >= total_windows)
            break;

    gain = (float)(64.54 - i / 100.0);

    return av_clipf(gain, -24.0, 64.0);
}
