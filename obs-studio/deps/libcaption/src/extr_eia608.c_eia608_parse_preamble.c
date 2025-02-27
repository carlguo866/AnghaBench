
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_style_t ;


 int* eia608_row_map ;
 int eia608_style_white ;

int eia608_parse_preamble(uint16_t cc_data, int* row, int* col, eia608_style_t* style, int* chan, int* underline)
{
    (*row) = eia608_row_map[((0x0700 & cc_data) >> 7) | ((0x0020 & cc_data) >> 5)];
    (*chan) = !!(0x0800 & cc_data);
    (*underline) = 0x0001 & cc_data;

    if (0x0010 & cc_data) {
        (*style) = eia608_style_white;
        (*col) = 4 * ((0x000E & cc_data) >> 1);
    } else {
        (*style) = (0x000E & cc_data) >> 1;
        (*col) = 0;
    }

    return 1;
}
