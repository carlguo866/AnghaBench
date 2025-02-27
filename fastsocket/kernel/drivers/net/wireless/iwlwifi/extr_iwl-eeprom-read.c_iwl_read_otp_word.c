
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_trans {int dummy; } ;
typedef int __le16 ;


 int CSR_EEPROM_REG ;
 int CSR_EEPROM_REG_MSK_ADDR ;
 int CSR_EEPROM_REG_READ_VALID_MSK ;
 int CSR_OTP_GP_REG ;
 int CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK ;
 int CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK ;
 int EINVAL ;
 int IWL_EEPROM_ACCESS_TIMEOUT ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 int cpu_to_le16 (int) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int ) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;

__attribute__((used)) static int iwl_read_otp_word(struct iwl_trans *trans, u16 addr,
        __le16 *eeprom_data)
{
 int ret = 0;
 u32 r;
 u32 otpgp;

 iwl_write32(trans, CSR_EEPROM_REG,
      CSR_EEPROM_REG_MSK_ADDR & (addr << 1));
 ret = iwl_poll_bit(trans, CSR_EEPROM_REG,
     CSR_EEPROM_REG_READ_VALID_MSK,
     CSR_EEPROM_REG_READ_VALID_MSK,
     IWL_EEPROM_ACCESS_TIMEOUT);
 if (ret < 0) {
  IWL_ERR(trans, "Time out reading OTP[%d]\n", addr);
  return ret;
 }
 r = iwl_read32(trans, CSR_EEPROM_REG);

 otpgp = iwl_read32(trans, CSR_OTP_GP_REG);
 if (otpgp & CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK) {


  iwl_set_bit(trans, CSR_OTP_GP_REG,
       CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK);
  IWL_ERR(trans, "Uncorrectable OTP ECC error, abort OTP read\n");
  return -EINVAL;
 }
 if (otpgp & CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK) {


  iwl_set_bit(trans, CSR_OTP_GP_REG,
       CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK);
  IWL_ERR(trans, "Correctable OTP ECC error, continue read\n");
 }
 *eeprom_data = cpu_to_le16(r >> 16);
 return 0;
}
