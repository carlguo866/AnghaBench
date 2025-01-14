
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 int DSAF_SUB_SC_ROCEE_CLK_DIS_REG ;
 int DSAF_SUB_SC_ROCEE_CLK_EN_REG ;
 int DSAF_SUB_SC_ROCEE_RESET_DREQ_REG ;
 int DSAF_SUB_SC_ROCEE_RESET_REQ_REG ;
 int dsaf_write_sub (struct dsaf_device*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void hns_dsaf_roce_srst(struct dsaf_device *dsaf_dev, bool dereset)
{
 if (!dereset) {
  dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_ROCEE_RESET_REQ_REG, 1);
 } else {
  dsaf_write_sub(dsaf_dev,
          DSAF_SUB_SC_ROCEE_CLK_DIS_REG, 1);
  dsaf_write_sub(dsaf_dev,
          DSAF_SUB_SC_ROCEE_RESET_DREQ_REG, 1);
  msleep(20);
  dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_ROCEE_CLK_EN_REG, 1);
 }
}
