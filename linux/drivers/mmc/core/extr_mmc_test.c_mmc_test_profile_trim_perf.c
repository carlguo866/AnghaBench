
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct mmc_test_area {unsigned long max_sz; unsigned long dev_addr; } ;
struct mmc_test_card {int card; struct mmc_test_area area; } ;


 int MMC_TRIM_ARG ;
 int RESULT_UNSUP_CARD ;
 int RESULT_UNSUP_HOST ;
 int ktime_get_ts64 (struct timespec64*) ;
 int mmc_can_erase (int ) ;
 int mmc_can_trim (int ) ;
 int mmc_erase (int ,unsigned int,unsigned long,int ) ;
 int mmc_test_print_rate (struct mmc_test_card*,unsigned long,struct timespec64*,struct timespec64*) ;

__attribute__((used)) static int mmc_test_profile_trim_perf(struct mmc_test_card *test)
{
 struct mmc_test_area *t = &test->area;
 unsigned long sz;
 unsigned int dev_addr;
 struct timespec64 ts1, ts2;
 int ret;

 if (!mmc_can_trim(test->card))
  return RESULT_UNSUP_CARD;

 if (!mmc_can_erase(test->card))
  return RESULT_UNSUP_HOST;

 for (sz = 512; sz < t->max_sz; sz <<= 1) {
  dev_addr = t->dev_addr + (sz >> 9);
  ktime_get_ts64(&ts1);
  ret = mmc_erase(test->card, dev_addr, sz >> 9, MMC_TRIM_ARG);
  if (ret)
   return ret;
  ktime_get_ts64(&ts2);
  mmc_test_print_rate(test, sz, &ts1, &ts2);
 }
 dev_addr = t->dev_addr;
 ktime_get_ts64(&ts1);
 ret = mmc_erase(test->card, dev_addr, sz >> 9, MMC_TRIM_ARG);
 if (ret)
  return ret;
 ktime_get_ts64(&ts2);
 mmc_test_print_rate(test, sz, &ts1, &ts2);
 return 0;
}
