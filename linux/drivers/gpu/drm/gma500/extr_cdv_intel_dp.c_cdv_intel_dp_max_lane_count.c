
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int* dpcd; } ;


 size_t DP_DPCD_REV ;
 size_t DP_MAX_LANE_COUNT ;

__attribute__((used)) static int
cdv_intel_dp_max_lane_count(struct gma_encoder *encoder)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 int max_lane_count = 4;

 if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11) {
  max_lane_count = intel_dp->dpcd[DP_MAX_LANE_COUNT] & 0x1f;
  switch (max_lane_count) {
  case 1: case 2: case 4:
   break;
  default:
   max_lane_count = 4;
  }
 }
 return max_lane_count;
}
