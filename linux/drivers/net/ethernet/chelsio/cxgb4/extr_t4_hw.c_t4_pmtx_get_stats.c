
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int pm_stats_cnt; } ;
struct TYPE_4__ {int chip; TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;


 int PM_TX_DBG_CTRL_A ;
 int PM_TX_DBG_DATA_A ;
 int PM_TX_DBG_STAT_MSB_A ;
 int PM_TX_STAT_CONFIG_A ;
 int PM_TX_STAT_COUNT_A ;
 int PM_TX_STAT_LSB_A ;
 scalar_t__ is_t4 (int ) ;
 int t4_read_indirect (struct adapter*,int ,int ,int*,int,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_read_reg64 (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_pmtx_get_stats(struct adapter *adap, u32 cnt[], u64 cycles[])
{
 int i;
 u32 data[2];

 for (i = 0; i < adap->params.arch.pm_stats_cnt; i++) {
  t4_write_reg(adap, PM_TX_STAT_CONFIG_A, i + 1);
  cnt[i] = t4_read_reg(adap, PM_TX_STAT_COUNT_A);
  if (is_t4(adap->params.chip)) {
   cycles[i] = t4_read_reg64(adap, PM_TX_STAT_LSB_A);
  } else {
   t4_read_indirect(adap, PM_TX_DBG_CTRL_A,
      PM_TX_DBG_DATA_A, data, 2,
      PM_TX_DBG_STAT_MSB_A);
   cycles[i] = (((u64)data[0] << 32) | data[1]);
  }
 }
}
