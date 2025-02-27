
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct tftp_stats {int amount; int rollovers; int blocks; TYPE_2__ tstart; TYPE_1__ tstop; } ;


 int printf (char*,...) ;
 int putchar (char) ;

void
printstats(const char *direction, int verbose, struct tftp_stats *ts)
{
 double delta;

 delta = ((ts->tstop.tv_sec*10.)+(ts->tstop.tv_usec/100000)) -
  ((ts->tstart.tv_sec*10.)+(ts->tstart.tv_usec/100000));
 delta = delta/10.;

 printf("%s %zu bytes during %.1f seconds in %u blocks",
     direction, ts->amount, delta, ts->blocks);

 if (ts->rollovers != 0)
  printf(" with %d rollover%s",
      ts->rollovers, ts->rollovers != 1 ? "s" : "");

 if (verbose)
  printf(" [%.0f bits/sec]", (ts->amount*8.)/delta);
 putchar('\n');
}
