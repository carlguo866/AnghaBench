
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* netdata_map_chart_names ;

void netdata_fix_chart_name(char *s) {
    while ((*s = netdata_map_chart_names[(unsigned char) *s])) s++;
}
