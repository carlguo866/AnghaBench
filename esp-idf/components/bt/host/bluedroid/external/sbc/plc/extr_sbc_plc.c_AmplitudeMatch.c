
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int SBC_FS ;
 int SBC_LHIST ;
 scalar_t__ absolute (int) ;

__attribute__((used)) static float AmplitudeMatch(int16_t *y, int16_t bestmatch) {
    int i;
    float sumx = 0;
    float sumy = 0.000001f;
    float sf;

    for (i = 0; i < SBC_FS; i++){
        sumx += absolute(y[SBC_LHIST - SBC_FS + i]);
        sumy += absolute(y[bestmatch + i]);
    }
    sf = sumx / sumy;

    if (sf < 0.75f) {
        sf = 0.75f;
    }
    if (sf > 1.2f) {
        sf = 1.2f;
    }
    return sf;
}
