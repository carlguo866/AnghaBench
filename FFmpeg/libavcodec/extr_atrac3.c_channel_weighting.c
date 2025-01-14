
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float INTERPOLATE (float,float,int) ;
 int get_channel_weights (int,int,float*) ;

__attribute__((used)) static void channel_weighting(float *su1, float *su2, int *p3)
{
    int band, nsample;

    float w[2][2];

    if (p3[1] != 7 || p3[3] != 7) {
        get_channel_weights(p3[1], p3[0], w[0]);
        get_channel_weights(p3[3], p3[2], w[1]);

        for (band = 256; band < 4 * 256; band += 256) {
            for (nsample = band; nsample < band + 8; nsample++) {
                su1[nsample] *= INTERPOLATE(w[0][0], w[0][1], nsample - band);
                su2[nsample] *= INTERPOLATE(w[1][0], w[1][1], nsample - band);
            }
            for(; nsample < band + 256; nsample++) {
                su1[nsample] *= w[1][0];
                su2[nsample] *= w[1][1];
            }
        }
    }
}
