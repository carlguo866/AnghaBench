
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nv3_sim_state ;
struct TYPE_7__ {int graphics_lwm; } ;
typedef TYPE_1__ nv3_fifo_info ;
struct TYPE_8__ {int priority; int gburst_size; int vburst_size; } ;
typedef TYPE_2__ nv3_arb_info ;


 int nv3_arb (TYPE_1__*,int *,TYPE_2__*) ;

__attribute__((used)) static char nv3_get_param(nv3_fifo_info *res_info, nv3_sim_state * state, nv3_arb_info *ainfo)
{
    int done, g,v, p;

    done = 0;
    for (p=0; p < 2; p++)
    {
        for (g=128 ; g > 32; g= g>> 1)
        {
            for (v=128; v >=32; v = v>> 1)
            {
                ainfo->priority = p;
                ainfo->gburst_size = g;
                ainfo->vburst_size = v;
                done = nv3_arb(res_info, state,ainfo);
                if (done && (g==128))
                    if ((res_info->graphics_lwm + g) > 256)
                        done = 0;
                if (done)
                    goto Done;
            }
        }
    }

 Done:
    return done;
}
