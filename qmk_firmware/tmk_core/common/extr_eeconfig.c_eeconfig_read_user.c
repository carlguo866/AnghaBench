
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EECONFIG_USER ;
 int eeprom_read_dword (int ) ;

uint32_t eeconfig_read_user(void) { return eeprom_read_dword(EECONFIG_USER); }
