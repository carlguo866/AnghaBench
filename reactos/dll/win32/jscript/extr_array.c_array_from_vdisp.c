
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jsdisp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int ArrayInstance ;


 int * array_from_jsdisp (int ) ;

__attribute__((used)) static inline ArrayInstance *array_from_vdisp(vdisp_t *vdisp)
{
    return array_from_jsdisp(vdisp->u.jsdisp);
}
