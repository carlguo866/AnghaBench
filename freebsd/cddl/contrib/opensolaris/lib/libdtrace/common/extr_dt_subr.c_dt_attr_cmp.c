
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dtat_name; int dtat_data; int dtat_class; } ;
typedef TYPE_1__ dtrace_attribute_t ;



int
dt_attr_cmp(dtrace_attribute_t a1, dtrace_attribute_t a2)
{
 return (((int)a1.dtat_name - a2.dtat_name) |
     ((int)a1.dtat_data - a2.dtat_data) |
     ((int)a1.dtat_class - a2.dtat_class));
}
