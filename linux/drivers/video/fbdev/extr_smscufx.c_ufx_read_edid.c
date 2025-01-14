
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ufx_data {int dummy; } ;


 int BUG_ON (int) ;
 int EDID_LENGTH ;
 int ETIMEDOUT ;
 int check_warn_return (int,char*) ;
 int memset (int*,int,int) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int ufx_i2c_configure (struct ufx_data*) ;
 int ufx_i2c_wait_busy (struct ufx_data*) ;
 int ufx_reg_read (struct ufx_data*,int,int ) ;
 int ufx_reg_write (struct ufx_data*,int,int) ;

__attribute__((used)) static int ufx_read_edid(struct ufx_data *dev, u8 *edid, int edid_len)
{
 int i, j, status;
 u32 *edid_u32 = (u32 *)edid;

 BUG_ON(edid_len != EDID_LENGTH);

 status = ufx_i2c_configure(dev);
 if (status < 0) {
  pr_err("ufx_i2c_configure failed");
  return status;
 }

 memset(edid, 0xff, EDID_LENGTH);


 for (i = 0; i < 2; i++) {
  u32 temp = 0x28070000 | (63 << 20) | (((u32)(i * 64)) << 8);
  status = ufx_reg_write(dev, 0x1100, temp);
  check_warn_return(status, "Failed to write 0x1100");

  temp |= 0x80000000;
  status = ufx_reg_write(dev, 0x1100, temp);
  check_warn_return(status, "Failed to write 0x1100");

  status = ufx_i2c_wait_busy(dev);
  check_warn_return(status, "Timeout waiting for I2C BUSY to clear");

  for (j = 0; j < 16; j++) {
   u32 data_reg_addr = 0x1110 + (j * 4);
   status = ufx_reg_read(dev, data_reg_addr, edid_u32++);
   check_warn_return(status, "Error reading i2c data");
  }
 }


 for (i = 0; i < 16; i++) {
  if (edid[i] != 0xFF) {
   pr_debug("edid data read successfully");
   return EDID_LENGTH;
  }
 }

 pr_warn("edid data contains all 0xff");
 return -ETIMEDOUT;
}
