
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vdso_timestamp {int nsec; scalar_t__ sec; } ;
struct vdso_data {struct vdso_timestamp* basetime; void* clock_mode; } ;
struct TYPE_4__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int xtime_nsec; int shift; } ;
struct timekeeper {TYPE_2__ wall_to_monotonic; TYPE_1__ tkr_mono; scalar_t__ xtime_sec; } ;


 size_t CLOCK_MONOTONIC_COARSE ;
 size_t CLOCK_REALTIME_COARSE ;
 size_t CS_HRES_COARSE ;
 size_t CS_RAW ;
 int NSEC_PER_SEC ;
 void* __arch_get_clock_mode (struct timekeeper*) ;
 struct vdso_data* __arch_get_k_vdso_data () ;
 int __arch_sync_vdso_data (struct vdso_data*) ;
 scalar_t__ __arch_update_vdso_data () ;
 int __arch_update_vsyscall (struct vdso_data*,struct timekeeper*) ;
 scalar_t__ __iter_div_u64_rem (int,int ,int*) ;
 int update_vdso_data (struct vdso_data*,struct timekeeper*) ;
 int vdso_write_begin (struct vdso_data*) ;
 int vdso_write_end (struct vdso_data*) ;

void update_vsyscall(struct timekeeper *tk)
{
 struct vdso_data *vdata = __arch_get_k_vdso_data();
 struct vdso_timestamp *vdso_ts;
 u64 nsec;

 if (__arch_update_vdso_data()) {




  return;
 }


 vdso_write_begin(vdata);

 vdata[CS_HRES_COARSE].clock_mode = __arch_get_clock_mode(tk);
 vdata[CS_RAW].clock_mode = __arch_get_clock_mode(tk);


 vdso_ts = &vdata[CS_HRES_COARSE].basetime[CLOCK_REALTIME_COARSE];
 vdso_ts->sec = tk->xtime_sec;
 vdso_ts->nsec = tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;


 vdso_ts = &vdata[CS_HRES_COARSE].basetime[CLOCK_MONOTONIC_COARSE];
 vdso_ts->sec = tk->xtime_sec + tk->wall_to_monotonic.tv_sec;
 nsec = tk->tkr_mono.xtime_nsec >> tk->tkr_mono.shift;
 nsec = nsec + tk->wall_to_monotonic.tv_nsec;
 vdso_ts->sec += __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);

 update_vdso_data(vdata, tk);

 __arch_update_vsyscall(vdata, tk);

 vdso_write_end(vdata);

 __arch_sync_vdso_data(vdata);
}
