
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {TYPE_1__* cur; } ;
struct TYPE_5__ {int (* pre_anal_bb_cb ) (TYPE_2__*,int *,int ) ;} ;
typedef int RAnalState ;
typedef TYPE_2__ RAnal ;


 int stub1 (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void r_anal_ex_perform_pre_anal_bb_cb(RAnal *anal, RAnalState *state, ut64 addr) {
 if (anal && anal->cur && anal->cur->pre_anal_bb_cb) {
  anal->cur->pre_anal_bb_cb (anal, state, addr);
 }
}
