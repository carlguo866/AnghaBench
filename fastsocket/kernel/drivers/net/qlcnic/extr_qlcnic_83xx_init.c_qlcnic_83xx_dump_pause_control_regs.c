
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int QLCRD32 (struct qlcnic_adapter*,int) ;
 int QLCWR32 (struct qlcnic_adapter*,int,int) ;
 int QLC_83XX_PORT0_TC_MC_REG ;
 int QLC_83XX_PORT0_TC_STATS ;
 int QLC_83XX_PORT0_THRESHOLD ;
 int QLC_83XX_PORT1_TC_MC_REG ;
 int QLC_83XX_PORT1_TC_STATS ;
 int QLC_83XX_PORT1_THRESHOLD ;
 int QLC_83XX_PORT2_IFB_THRESHOLD ;
 int QLC_83XX_PORT3_IFB_THRESHOLD ;
 int QLC_83XX_SRE_SHIM_REG ;
 int dev_info (int *,char*,...) ;

__attribute__((used)) static void qlcnic_83xx_dump_pause_control_regs(struct qlcnic_adapter *adapter)
{
 int i, j;
 u32 val = 0, val1 = 0, reg = 0;

 val = QLCRD32(adapter, QLC_83XX_SRE_SHIM_REG);
 dev_info(&adapter->pdev->dev, "SRE-Shim Ctrl:0x%x\n", val);

 for (j = 0; j < 2; j++) {
  if (j == 0) {
   dev_info(&adapter->pdev->dev,
     "Port 0 RxB Pause Threshold Regs[TC7..TC0]:");
   reg = QLC_83XX_PORT0_THRESHOLD;
  } else if (j == 1) {
   dev_info(&adapter->pdev->dev,
     "Port 1 RxB Pause Threshold Regs[TC7..TC0]:");
   reg = QLC_83XX_PORT1_THRESHOLD;
  }
  for (i = 0; i < 8; i++) {
   val = QLCRD32(adapter, reg + (i * 0x4));
   dev_info(&adapter->pdev->dev, "0x%x  ", val);
  }
  dev_info(&adapter->pdev->dev, "\n");
 }

 for (j = 0; j < 2; j++) {
  if (j == 0) {
   dev_info(&adapter->pdev->dev,
     "Port 0 RxB TC Max Cell Registers[4..1]:");
   reg = QLC_83XX_PORT0_TC_MC_REG;
  } else if (j == 1) {
   dev_info(&adapter->pdev->dev,
     "Port 1 RxB TC Max Cell Registers[4..1]:");
   reg = QLC_83XX_PORT1_TC_MC_REG;
  }
  for (i = 0; i < 4; i++) {
   val = QLCRD32(adapter, reg + (i * 0x4));
    dev_info(&adapter->pdev->dev, "0x%x  ", val);
  }
  dev_info(&adapter->pdev->dev, "\n");
 }

 for (j = 0; j < 2; j++) {
  if (j == 0) {
   dev_info(&adapter->pdev->dev,
     "Port 0 RxB Rx TC Stats[TC7..TC0]:");
   reg = QLC_83XX_PORT0_TC_STATS;
  } else if (j == 1) {
   dev_info(&adapter->pdev->dev,
     "Port 1 RxB Rx TC Stats[TC7..TC0]:");
   reg = QLC_83XX_PORT1_TC_STATS;
  }
  for (i = 7; i >= 0; i--) {
   val = QLCRD32(adapter, reg);
   val &= ~(0x7 << 29);
   QLCWR32(adapter, reg, (val | (i << 29)));
   val = QLCRD32(adapter, reg);
   dev_info(&adapter->pdev->dev, "0x%x  ", val);
  }
  dev_info(&adapter->pdev->dev, "\n");
 }

 val = QLCRD32(adapter, QLC_83XX_PORT2_IFB_THRESHOLD);
 val1 = QLCRD32(adapter, QLC_83XX_PORT3_IFB_THRESHOLD);
 dev_info(&adapter->pdev->dev,
   "IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\n",
   val, val1);
}
