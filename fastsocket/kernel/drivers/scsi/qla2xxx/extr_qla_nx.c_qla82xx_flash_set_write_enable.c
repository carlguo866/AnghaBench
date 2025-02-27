
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 int M25P_INSTR_WREN ;
 int QLA82XX_ROMUSB_ROM_ABYTE_CNT ;
 int QLA82XX_ROMUSB_ROM_INSTR_OPCODE ;
 scalar_t__ qla82xx_read_status_reg (struct qla_hw_data*,int*) ;
 int qla82xx_wait_rom_busy (struct qla_hw_data*) ;
 scalar_t__ qla82xx_wait_rom_done (struct qla_hw_data*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

__attribute__((used)) static int
qla82xx_flash_set_write_enable(struct qla_hw_data *ha)
{
 uint32_t val;
 qla82xx_wait_rom_busy(ha);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_WREN);
 qla82xx_wait_rom_busy(ha);
 if (qla82xx_wait_rom_done(ha))
  return -1;
 if (qla82xx_read_status_reg(ha, &val) != 0)
  return -1;
 if ((val & 2) != 2)
  return -1;
 return 0;
}
