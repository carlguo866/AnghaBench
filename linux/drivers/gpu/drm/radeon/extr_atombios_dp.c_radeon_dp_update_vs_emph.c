
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_dp_link_train_info {int dp_lane_count; int * train_set; int aux; int encoder; } ;


 int ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH ;
 int DP_TRAINING_LANE0_SET ;
 int atombios_dig_transmitter_setup (int ,int ,int ,int ) ;
 int drm_dp_dpcd_write (int ,int ,int *,int ) ;

__attribute__((used)) static void radeon_dp_update_vs_emph(struct radeon_dp_link_train_info *dp_info)
{

 atombios_dig_transmitter_setup(dp_info->encoder,
           ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH,
           0, dp_info->train_set[0]);


 drm_dp_dpcd_write(dp_info->aux, DP_TRAINING_LANE0_SET,
     dp_info->train_set, dp_info->dp_lane_count);
}
