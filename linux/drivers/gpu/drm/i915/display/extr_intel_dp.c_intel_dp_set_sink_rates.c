
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* sink_rates; int num_sink_rates; int * dpcd; } ;


 int ARRAY_SIZE (int const*) ;
 size_t DP_MAX_LINK_RATE ;
 int drm_dp_bw_code_to_link_rate (int ) ;

__attribute__((used)) static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
{
 static const int dp_rates[] = {
  162000, 270000, 540000, 810000
 };
 int i, max_rate;

 max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);

 for (i = 0; i < ARRAY_SIZE(dp_rates); i++) {
  if (dp_rates[i] > max_rate)
   break;
  intel_dp->sink_rates[i] = dp_rates[i];
 }

 intel_dp->num_sink_rates = i;
}
