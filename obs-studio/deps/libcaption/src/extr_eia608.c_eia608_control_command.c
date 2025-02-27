
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_control_t ;


 scalar_t__ eia608_parity (int) ;
 int eia608_tab_offset_0 ;

uint16_t eia608_control_command(eia608_control_t cmd, int cc)
{
    uint16_t c = (cc & 0x01) ? 0x0800 : 0x0000;
    uint16_t f = (cc & 0x02) ? 0x0100 : 0x0000;

    if (eia608_tab_offset_0 == (eia608_control_t)(cmd & 0xFFC0)) {
        return (eia608_control_t)eia608_parity(cmd | c);
    } else {
        return (eia608_control_t)eia608_parity(cmd | c | f);
    }
}
