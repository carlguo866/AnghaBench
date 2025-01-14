
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sta_info {TYPE_1__* mesh; } ;
struct ieee80211_local {int dummy; } ;
struct TYPE_2__ {int tx_rate_avg; int fail_avg; } ;


 int ARITH_SHIFT ;
 int DIV_ROUND_UP (int ,int) ;
 unsigned long LINK_FAIL_THRESH ;
 int MAX_METRIC ;
 int TEST_FRAME_LEN ;
 scalar_t__ WARN_ON (int) ;
 unsigned long ewma_mesh_fail_avg_read (int *) ;
 int ewma_mesh_tx_rate_avg_read (int *) ;
 int sta_get_expected_throughput (struct sta_info*) ;

u32 airtime_link_metric_get(struct ieee80211_local *local,
       struct sta_info *sta)
{

 int device_constant = 1 << ARITH_SHIFT;
 int test_frame_len = TEST_FRAME_LEN << ARITH_SHIFT;
 int s_unit = 1 << ARITH_SHIFT;
 int rate, err;
 u32 tx_time, estimated_retx;
 u64 result;
 unsigned long fail_avg =
  ewma_mesh_fail_avg_read(&sta->mesh->fail_avg);






 rate = DIV_ROUND_UP(sta_get_expected_throughput(sta), 100);

 if (rate) {
  err = 0;
 } else {
  if (fail_avg > LINK_FAIL_THRESH)
   return MAX_METRIC;

  rate = ewma_mesh_tx_rate_avg_read(&sta->mesh->tx_rate_avg);
  if (WARN_ON(!rate))
   return MAX_METRIC;

  err = (fail_avg << ARITH_SHIFT) / 100;
 }




 tx_time = (device_constant + 10 * test_frame_len / rate);
 estimated_retx = ((1 << (2 * ARITH_SHIFT)) / (s_unit - err));
 result = (tx_time * estimated_retx) >> (2 * ARITH_SHIFT);
 return (u32)result;
}
