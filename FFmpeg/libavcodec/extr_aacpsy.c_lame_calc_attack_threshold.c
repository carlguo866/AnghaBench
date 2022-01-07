
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quality; float st_lrm; } ;


 int FFMAX (int,int) ;
 TYPE_1__* psy_abr_map ;

__attribute__((used)) static float lame_calc_attack_threshold(int bitrate)
{

    int lower_range = 12, upper_range = 12;
    int lower_range_kbps = psy_abr_map[12].quality;
    int upper_range_kbps = psy_abr_map[12].quality;
    int i;




    for (i = 1; i < 13; i++) {
        if (FFMAX(bitrate, psy_abr_map[i].quality) != bitrate) {
            upper_range = i;
            upper_range_kbps = psy_abr_map[i ].quality;
            lower_range = i - 1;
            lower_range_kbps = psy_abr_map[i - 1].quality;
            break;
        }
    }


    if ((upper_range_kbps - bitrate) > (bitrate - lower_range_kbps))
        return psy_abr_map[lower_range].st_lrm;
    return psy_abr_map[upper_range].st_lrm;
}
