
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {float Maximum; float Default; float Minimum; } ;
struct filter_level {int min; int max; int default_val; TYPE_3__ Range; int level; } ;
struct TYPE_7__ {int f; } ;
struct TYPE_6__ {int f; } ;
struct TYPE_9__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef TYPE_4__ module_config_t ;
typedef int filter_t ;


 int atomic_init (int *,float) ;
 TYPE_4__* config_FindConfig (char const*) ;
 scalar_t__ unlikely (int ) ;
 float var_CreateGetFloatCommand (int *,char const*) ;

__attribute__((used)) static void InitLevel(filter_t *filter, struct filter_level *range, const char *p_name, float def)
{
    int level = 0;

    module_config_t *cfg = config_FindConfig(p_name);
    if (unlikely(cfg == ((void*)0)))
    {
        range->min = 0.;
        range->max = 2.;
        range->default_val = 1.;
    }
    else
    {
        range->min = cfg->min.f;
        range->max = cfg->max.f;
        range->default_val = def;

        float val = var_CreateGetFloatCommand( filter, p_name );

        if (val > range->default_val)
            level = (range->Range.Maximum - range->Range.Default) * (val - range->default_val) /
                    (range->max - range->default_val);
        else if (val < range->default_val)
            level = (range->Range.Minimum - range->Range.Default) * (val - range->default_val) /
                    (range->min - range->default_val);
    }

    atomic_init( &range->level, range->Range.Default + level );
}
