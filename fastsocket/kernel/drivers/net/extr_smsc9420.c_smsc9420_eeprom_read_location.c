
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct smsc9420_pdata {int dummy; } ;


 size_t E2P_CMD_EPC_CMD_READ_ ;
 int E2P_DATA ;
 int HW ;
 int smsc9420_eeprom_send_cmd (struct smsc9420_pdata*,size_t) ;
 size_t smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc_dbg (int ,char*,size_t) ;

__attribute__((used)) static int smsc9420_eeprom_read_location(struct smsc9420_pdata *pd,
      u8 address, u8 *data)
{
 u32 op = E2P_CMD_EPC_CMD_READ_ | address;
 int ret;

 smsc_dbg(HW, "address 0x%x", address);
 ret = smsc9420_eeprom_send_cmd(pd, op);

 if (!ret)
  data[address] = smsc9420_reg_read(pd, E2P_DATA);

 return ret;
}
