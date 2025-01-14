
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct RClass {int dummy; } ;
typedef int mrb_sym ;
typedef int mrb_state ;
struct TYPE_5__ {scalar_t__ bpnum; TYPE_2__* bp; } ;
typedef TYPE_1__ mrb_debug_context ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ enable; } ;
typedef TYPE_2__ mrb_debug_breakpoint ;
typedef int mrb_bool ;
typedef scalar_t__ int32_t ;


 scalar_t__ MRB_DEBUG_BPTYPE_METHOD ;
 scalar_t__ MRB_DEBUG_BPTYPE_NONE ;
 scalar_t__ MRB_DEBUG_INVALID_ARGUMENT ;
 scalar_t__ TRUE ;
 scalar_t__ compare_break_method (int *,TYPE_2__*,struct RClass*,int ,int *) ;

int32_t
mrb_debug_check_breakpoint_method(mrb_state *mrb, mrb_debug_context *dbg, struct RClass *class_obj, mrb_sym method_sym, mrb_bool* isCfunc)
{
  mrb_debug_breakpoint *bp;
  int32_t bpno;
  uint32_t i;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0)) || (class_obj == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  bp = dbg->bp;
  for(i=0; i<dbg->bpnum; i++) {
    if (bp->type == MRB_DEBUG_BPTYPE_METHOD) {
      if (bp->enable == TRUE) {
        bpno = compare_break_method(mrb, bp, class_obj, method_sym, isCfunc);
        if (bpno > 0) {
          return bpno;
        }
      }
    }
    else if (bp->type == MRB_DEBUG_BPTYPE_NONE) {
      break;
    }
    bp++;
  }

  return 0;
}
