
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int underflow; scalar_t__ min; int overflow; scalar_t__ max; } ;
struct TYPE_5__ {int has_range; TYPE_2__ range; } ;
typedef TYPE_1__ zend_ssa_var_info ;
typedef TYPE_2__ zend_ssa_range ;


 scalar_t__ ZEND_LONG_MAX ;
 scalar_t__ ZEND_LONG_MIN ;

int zend_inference_widening_meet(zend_ssa_var_info *var_info, zend_ssa_range *r)
{
 if (!var_info->has_range) {
  var_info->has_range = 1;
 } else {
  if (r->underflow ||
      var_info->range.underflow ||
      r->min < var_info->range.min) {
   r->underflow = 1;
   r->min = ZEND_LONG_MIN;
  }
  if (r->overflow ||
      var_info->range.overflow ||
      r->max > var_info->range.max) {
   r->overflow = 1;
   r->max = ZEND_LONG_MAX;
  }
  if (var_info->range.min == r->min &&
      var_info->range.max == r->max &&
      var_info->range.underflow == r->underflow &&
      var_info->range.overflow == r->overflow) {
   return 0;
  }
 }
 var_info->range = *r;
 return 1;
}
