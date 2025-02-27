
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_hwif_t ;


 int IDE_IN (int,int,int) ;
 int ide_vlb_clk ;

__attribute__((used)) static u8 qd6500_compute_timing (ide_hwif_t *hwif, int active_time, int recovery_time)
{
 int clk = ide_vlb_clk ? ide_vlb_clk : 50;
 u8 act_cyc, rec_cyc;

 if (clk <= 33) {
  act_cyc = 9 - IDE_IN(active_time * clk / 1000 + 1, 2, 9);
  rec_cyc = 15 - IDE_IN(recovery_time * clk / 1000 + 1, 0, 15);
 } else {
  act_cyc = 8 - IDE_IN(active_time * clk / 1000 + 1, 1, 8);
  rec_cyc = 18 - IDE_IN(recovery_time * clk / 1000 + 1, 3, 18);
 }

 return (rec_cyc << 4) | 0x08 | act_cyc;
}
