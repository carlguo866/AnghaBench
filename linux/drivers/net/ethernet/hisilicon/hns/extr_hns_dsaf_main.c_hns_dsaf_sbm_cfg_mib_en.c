
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int name; } ;
struct dsaf_device {TYPE_1__ ae_dev; int dev; } ;


 int DSAF_CFG_READ_CNT ;
 int DSAF_SBM_CFG_MIB_EN_S ;
 int DSAF_SBM_CFG_REG_0_REG ;
 int ENODEV ;
 int HNS_DSAF_SBM_NUM (struct dsaf_device*) ;
 int dev_err (int ,char*,int ,int) ;
 int dsaf_get_dev_bit (struct dsaf_device*,int,int ) ;
 int dsaf_set_dev_bit (struct dsaf_device*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int hns_dsaf_sbm_cfg_mib_en(struct dsaf_device *dsaf_dev)
{
 u32 sbm_cfg_mib_en;
 u32 i;
 u32 reg;
 u32 read_cnt;


 for (i = 0; i < HNS_DSAF_SBM_NUM(dsaf_dev); i++) {
  reg = DSAF_SBM_CFG_REG_0_REG + 0x80 * i;
  dsaf_set_dev_bit(dsaf_dev, reg, DSAF_SBM_CFG_MIB_EN_S, 0);
 }

 for (i = 0; i < HNS_DSAF_SBM_NUM(dsaf_dev); i++) {
  reg = DSAF_SBM_CFG_REG_0_REG + 0x80 * i;
  dsaf_set_dev_bit(dsaf_dev, reg, DSAF_SBM_CFG_MIB_EN_S, 1);
 }


 for (i = 0; i < HNS_DSAF_SBM_NUM(dsaf_dev); i++) {
  read_cnt = 0;
  reg = DSAF_SBM_CFG_REG_0_REG + 0x80 * i;
  do {
   udelay(1);
   sbm_cfg_mib_en = dsaf_get_dev_bit(
     dsaf_dev, reg, DSAF_SBM_CFG_MIB_EN_S);
   read_cnt++;
  } while (sbm_cfg_mib_en == 0 &&
   read_cnt < DSAF_CFG_READ_CNT);

  if (sbm_cfg_mib_en == 0) {
   dev_err(dsaf_dev->dev,
    "sbm_cfg_mib_en fail,%s,sbm_num=%d\n",
    dsaf_dev->ae_dev.name, i);
   return -ENODEV;
  }
 }

 return 0;
}
