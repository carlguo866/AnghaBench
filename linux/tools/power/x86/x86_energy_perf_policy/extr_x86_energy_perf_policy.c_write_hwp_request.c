
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_request {int hwp_min; int hwp_max; int hwp_desired; int hwp_epp; int hwp_window; int hwp_use_pkg; } ;


 unsigned long long HWP_ACTIVITY_WINDOW (int) ;
 unsigned long long HWP_DESIRED_PERF (int ) ;
 unsigned long long HWP_ENERGY_PERF_PREFERENCE (int) ;
 unsigned long long HWP_MAX_PERF (int ) ;
 unsigned long long HWP_MIN_PERF (int ) ;
 unsigned long long HWP_PACKAGE_CONTROL (int) ;
 int debug ;
 int printf (char*,int,int,int,int,int,int,int) ;
 int put_msr (int,unsigned int,unsigned long long) ;
 int ratio_2_msr_perf (int) ;

void write_hwp_request(int cpu, struct msr_hwp_request *hwp_req, unsigned int msr_offset)
{
 unsigned long long msr = 0;

 if (debug > 1)
  printf("cpu%d: requesting min %d max %d des %d epp %d window 0x%0x use_pkg %d\n",
   cpu, hwp_req->hwp_min, hwp_req->hwp_max,
   hwp_req->hwp_desired, hwp_req->hwp_epp,
   hwp_req->hwp_window, hwp_req->hwp_use_pkg);

 msr |= HWP_MIN_PERF(ratio_2_msr_perf(hwp_req->hwp_min));
 msr |= HWP_MAX_PERF(ratio_2_msr_perf(hwp_req->hwp_max));
 msr |= HWP_DESIRED_PERF(ratio_2_msr_perf(hwp_req->hwp_desired));
 msr |= HWP_ENERGY_PERF_PREFERENCE(hwp_req->hwp_epp);
 msr |= HWP_ACTIVITY_WINDOW(hwp_req->hwp_window);
 msr |= HWP_PACKAGE_CONTROL(hwp_req->hwp_use_pkg);

 put_msr(cpu, msr_offset, msr);
}
