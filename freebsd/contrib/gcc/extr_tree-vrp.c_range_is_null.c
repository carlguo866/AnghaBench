
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int max; int min; } ;
typedef TYPE_1__ value_range_t ;


 scalar_t__ VR_RANGE ;
 scalar_t__ integer_zerop (int ) ;

__attribute__((used)) static inline bool
range_is_null (value_range_t *vr)
{
  return vr->type == VR_RANGE
  && integer_zerop (vr->min)
  && integer_zerop (vr->max);
}
