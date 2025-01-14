
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cycles; } ;


 int CycloneRun (TYPE_1__*) ;
 int EVT_RUN_END ;
 int EVT_RUN_START ;
 TYPE_1__ PicoCpuCM68k ;
 int SekCycleAim ;
 int SekCycleCnt ;
 scalar_t__ SekCyclesLeft ;
 int SekTrace (int ) ;
 int fm68k_emulate (int,int ) ;
 int m68k ;
 int m68k_execute (int) ;
 int pevt_log_m68k_o (int ) ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;

__attribute__((used)) static void SekSyncM68k(void)
{
  int cyc_do;
  pprof_start(m68k);
  pevt_log_m68k_o(EVT_RUN_START);

  while ((cyc_do = SekCycleAim - SekCycleCnt) > 0) {
    SekCycleCnt += cyc_do;
  }

  SekCyclesLeft = 0;

  SekTrace(0);
  pevt_log_m68k_o(EVT_RUN_END);
  pprof_end(m68k);
}
