
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcUnits; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef size_t xtensa_funcUnit ;
struct TYPE_4__ {int num_copies; } ;


 int CHECK_FUNCUNIT (TYPE_2__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

int
xtensa_funcUnit_num_copies (xtensa_isa isa, xtensa_funcUnit fun)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_FUNCUNIT (intisa, fun, XTENSA_UNDEFINED);
  return intisa->funcUnits[fun].num_copies;
}
