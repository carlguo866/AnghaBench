
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int generate_raw_frame(uint16_t *frame_data, int i, int sample_rate,
                              int channels, int frame_size)
{
    int j, k;

    for (j = 0; j < frame_size; j++) {
        frame_data[channels * j] = 10000 * ((j / 10 * i) % 2);
        for (k = 1; k < channels; k++)
            frame_data[channels * j + k] = frame_data[channels * j] * (k + 1);
    }
    return 0;
}
