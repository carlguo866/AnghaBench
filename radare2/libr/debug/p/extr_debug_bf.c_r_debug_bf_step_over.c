
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* io; } ;
struct TYPE_11__ {TYPE_3__ iob; } ;
struct TYPE_10__ {int bfvm; } ;
struct TYPE_8__ {TYPE_1__* desc; } ;
struct TYPE_7__ {TYPE_4__* data; } ;
typedef TYPE_4__ RIOBdescbg ;
typedef TYPE_5__ RDebug ;


 scalar_t__ bfvm_in_trap (int ) ;
 int bfvm_op (int ) ;
 int bfvm_step (int ,int ) ;

__attribute__((used)) static int r_debug_bf_step_over(RDebug *dbg) {
 RIOBdescbg *o = dbg->iob.io->desc->data;
 int op, oop = 0;
 for (;;) {
  op = bfvm_op (o->bfvm);
  if (oop != 0 && op != oop) {
   break;
  }
  if (bfvm_in_trap (o->bfvm)) {
   break;
  }
  bfvm_step (o->bfvm, 0);
  oop = op;
 }
 return 1;
}
