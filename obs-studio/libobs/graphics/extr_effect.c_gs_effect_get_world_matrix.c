
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_eparam_t ;
struct TYPE_3__ {int * world; } ;
typedef TYPE_1__ gs_effect_t ;



gs_eparam_t *gs_effect_get_world_matrix(const gs_effect_t *effect)
{
 return effect ? effect->world : ((void*)0);
}
