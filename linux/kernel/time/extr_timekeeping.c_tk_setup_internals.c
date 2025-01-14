
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int xtime_nsec; int shift; int mult; int cycle_last; int mask; struct clocksource* clock; } ;
struct TYPE_4__ {int xtime_nsec; int shift; int mult; int cycle_last; int mask; struct clocksource* clock; } ;
struct timekeeper {int cycle_interval; int xtime_interval; int xtime_remainder; int raw_interval; int ntp_error_shift; int ntp_tick; scalar_t__ skip_second_overflow; scalar_t__ ntp_err_mult; TYPE_1__ tkr_raw; TYPE_2__ tkr_mono; scalar_t__ ntp_error; int cs_was_changed_seq; } ;
struct clocksource {int shift; int mult; int mask; } ;


 int NTP_INTERVAL_LENGTH ;
 int NTP_SCALE_SHIFT ;
 int do_div (int,int) ;
 int tk_clock_read (TYPE_2__*) ;

__attribute__((used)) static void tk_setup_internals(struct timekeeper *tk, struct clocksource *clock)
{
 u64 interval;
 u64 tmp, ntpinterval;
 struct clocksource *old_clock;

 ++tk->cs_was_changed_seq;
 old_clock = tk->tkr_mono.clock;
 tk->tkr_mono.clock = clock;
 tk->tkr_mono.mask = clock->mask;
 tk->tkr_mono.cycle_last = tk_clock_read(&tk->tkr_mono);

 tk->tkr_raw.clock = clock;
 tk->tkr_raw.mask = clock->mask;
 tk->tkr_raw.cycle_last = tk->tkr_mono.cycle_last;


 tmp = NTP_INTERVAL_LENGTH;
 tmp <<= clock->shift;
 ntpinterval = tmp;
 tmp += clock->mult/2;
 do_div(tmp, clock->mult);
 if (tmp == 0)
  tmp = 1;

 interval = (u64) tmp;
 tk->cycle_interval = interval;


 tk->xtime_interval = interval * clock->mult;
 tk->xtime_remainder = ntpinterval - tk->xtime_interval;
 tk->raw_interval = interval * clock->mult;


 if (old_clock) {
  int shift_change = clock->shift - old_clock->shift;
  if (shift_change < 0) {
   tk->tkr_mono.xtime_nsec >>= -shift_change;
   tk->tkr_raw.xtime_nsec >>= -shift_change;
  } else {
   tk->tkr_mono.xtime_nsec <<= shift_change;
   tk->tkr_raw.xtime_nsec <<= shift_change;
  }
 }

 tk->tkr_mono.shift = clock->shift;
 tk->tkr_raw.shift = clock->shift;

 tk->ntp_error = 0;
 tk->ntp_error_shift = NTP_SCALE_SHIFT - clock->shift;
 tk->ntp_tick = ntpinterval << tk->ntp_error_shift;






 tk->tkr_mono.mult = clock->mult;
 tk->tkr_raw.mult = clock->mult;
 tk->ntp_err_mult = 0;
 tk->skip_second_overflow = 0;
}
