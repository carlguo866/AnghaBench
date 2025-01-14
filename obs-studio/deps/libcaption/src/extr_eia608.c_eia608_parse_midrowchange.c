
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_style_t ;



int eia608_parse_midrowchange(uint16_t cc_data, int* chan, eia608_style_t* style, int* underline)
{
    (*chan) = !!(0x0800 & cc_data);

    if (0x1120 == (0x7770 & cc_data)) {
        (*style) = (0x000E & cc_data) >> 1;
        (*underline) = 0x0001 & cc_data;
    }

    return 1;
}
