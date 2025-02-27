
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_hwmon_dev {int dummy; } ;


 int ENODATA ;
 int SENSOR_INVALID_DATA ;
 int SENSOR_RD_EN_ADDR (int) ;
 int SENSOR_RD_MSG ;
 scalar_t__ acpi_disabled ;
 int xgene_hwmon_pcc_rd (struct xgene_hwmon_dev*,int*) ;
 int xgene_hwmon_rd (struct xgene_hwmon_dev*,int*) ;

__attribute__((used)) static int xgene_hwmon_reg_map_rd(struct xgene_hwmon_dev *ctx, u32 addr,
      u32 *data)
{
 u32 msg[3];
 int rc;

 msg[0] = SENSOR_RD_MSG;
 msg[1] = SENSOR_RD_EN_ADDR(addr);
 msg[2] = 0;

 if (acpi_disabled)
  rc = xgene_hwmon_rd(ctx, msg);
 else
  rc = xgene_hwmon_pcc_rd(ctx, msg);

 if (rc < 0)
  return rc;




 if (msg[1] & SENSOR_INVALID_DATA)
  return -ENODATA;

 *data = msg[1];

 return rc;
}
