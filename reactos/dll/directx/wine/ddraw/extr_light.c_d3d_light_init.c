
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ddraw {int dummy; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3d_light {int ref; struct ddraw* ddraw; TYPE_1__ IDirect3DLight_iface; } ;


 int d3d_light_vtbl ;

void d3d_light_init(struct d3d_light *light, struct ddraw *ddraw)
{
    light->IDirect3DLight_iface.lpVtbl = &d3d_light_vtbl;
    light->ref = 1;
    light->ddraw = ddraw;
}
