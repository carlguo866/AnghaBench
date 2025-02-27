
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct hfi1_devdata {int * misc_err_status_cnt; } ;
typedef int buf ;


 int NUM_MISC_ERR_STATUS_COUNTERS ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int incr_cntr64 (int *) ;
 int misc_err_status_string (char*,int,unsigned long long) ;

__attribute__((used)) static void handle_misc_err(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
 char buf[96];
 int i = 0;

 dd_dev_info(dd, "Misc Error: %s",
      misc_err_status_string(buf, sizeof(buf), reg));
 for (i = 0; i < NUM_MISC_ERR_STATUS_COUNTERS; i++) {
  if (reg & (1ull << i))
   incr_cntr64(&dd->misc_err_status_cnt[i]);
 }
}
