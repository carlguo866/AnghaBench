
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct filter_level {float default_val; float max; float min; } ;
struct TYPE_8__ {float ll; } ;
struct TYPE_7__ {float ll; } ;
struct TYPE_6__ {float ll; } ;
struct TYPE_9__ {TYPE_3__ DefaultValue; TYPE_2__ MinValue; TYPE_1__ MaxValue; } ;
typedef float LONG ;
typedef TYPE_4__ DXVA2_ValueRange ;



__attribute__((used)) static LONG StoreLevel(const struct filter_level *range, const DXVA2_ValueRange *Range, float val)
{
    LONG level;
    if (val > range->default_val)
    {
        level = (Range->MaxValue.ll - Range->DefaultValue.ll) * (val - range->default_val) /
                (range->max - range->default_val);
    }
    else if (val < range->default_val)
    {
        level = (Range->MinValue.ll - Range->DefaultValue.ll) * (val - range->default_val) /
                (range->min - range->default_val);
    }
    else
        level = 0;

    return level + Range->DefaultValue.ll;
}
