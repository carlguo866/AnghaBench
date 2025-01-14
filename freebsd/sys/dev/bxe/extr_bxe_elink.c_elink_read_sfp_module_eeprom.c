
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct elink_phy {int type; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ (* read_sfp_module_eeprom_func_p ) (struct elink_phy*,struct elink_params*,int,scalar_t__,int,int*,int ) ;
typedef scalar_t__ elink_status_t ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 scalar_t__ ELINK_OP_NOT_SUPPORTED ;
 scalar_t__ ELINK_SFP_EEPROM_PAGE_SIZE ;
 scalar_t__ ELINK_STATUS_ERROR ;




 scalar_t__ elink_8726_read_sfp_module_eeprom (struct elink_phy*,struct elink_params*,int,scalar_t__,int,int*,int ) ;
 scalar_t__ elink_8727_read_sfp_module_eeprom (struct elink_phy*,struct elink_params*,int,scalar_t__,int,int*,int ) ;
 scalar_t__ elink_warpcore_read_sfp_module_eeprom (struct elink_phy*,struct elink_params*,int,scalar_t__,int,int*,int ) ;

elink_status_t elink_read_sfp_module_eeprom(struct elink_phy *phy,
     struct elink_params *params, uint8_t dev_addr,
     uint16_t addr, uint16_t byte_cnt, uint8_t *o_buf)
{
 elink_status_t rc = 0;
 struct bxe_softc *sc = params->sc;
 uint8_t xfer_size;
 uint8_t *user_data = o_buf;
 read_sfp_module_eeprom_func_p read_func;
 if ((dev_addr != 0xa0) && (dev_addr != 0xa2)) {
  ELINK_DEBUG_P1(sc, "invalid dev_addr 0x%x\n", dev_addr);
  return ELINK_STATUS_ERROR;
 }

 switch (phy->type) {
 case 130:
  read_func = elink_8726_read_sfp_module_eeprom;
  break;
 case 129:
 case 131:
  read_func = elink_8727_read_sfp_module_eeprom;
  break;
 case 128:
  read_func = elink_warpcore_read_sfp_module_eeprom;
  break;
 default:
  return ELINK_OP_NOT_SUPPORTED;
 }

 while (!rc && (byte_cnt > 0)) {
  xfer_size = (byte_cnt > ELINK_SFP_EEPROM_PAGE_SIZE) ?
   ELINK_SFP_EEPROM_PAGE_SIZE : byte_cnt;
  rc = read_func(phy, params, dev_addr, addr, xfer_size,
          user_data, 0);
  byte_cnt -= xfer_size;
  user_data += xfer_size;
  addr += xfer_size;
 }
 return rc;
}
