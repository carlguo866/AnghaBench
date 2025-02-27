
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int* sf_idx; } ;
typedef TYPE_1__ SingleChannelElement ;


 int SCALE_MAX_DIFF ;

__attribute__((used)) static inline int ff_sfdelta_can_remove_band(const SingleChannelElement *sce,
    const uint8_t *nextband, int prev_sf, int band)
{
    return prev_sf >= 0
        && sce->sf_idx[nextband[band]] >= (prev_sf - SCALE_MAX_DIFF)
        && sce->sf_idx[nextband[band]] <= (prev_sf + SCALE_MAX_DIFF);
}
