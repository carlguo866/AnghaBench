
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {int stats_started; scalar_t__ func_stx; TYPE_1__ port; } ;


 scalar_t__ IS_PF (struct bnx2x*) ;
 int bnx2x_func_stats_init (struct bnx2x*) ;
 int bnx2x_hw_stats_post (struct bnx2x*) ;
 int bnx2x_port_stats_init (struct bnx2x*) ;
 int bnx2x_storm_stats_post (struct bnx2x*) ;

__attribute__((used)) static void __bnx2x_stats_start(struct bnx2x *bp)
{
 if (IS_PF(bp)) {
  if (bp->port.pmf)
   bnx2x_port_stats_init(bp);

  else if (bp->func_stx)
   bnx2x_func_stats_init(bp);

  bnx2x_hw_stats_post(bp);
  bnx2x_storm_stats_post(bp);
 }

 bp->stats_started = 1;
}
