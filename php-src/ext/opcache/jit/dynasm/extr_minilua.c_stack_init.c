
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size_ci; int stack; int stacksize; int top; int stack_last; int base; TYPE_1__* ci; TYPE_1__* base_ci; TYPE_1__* end_ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_6__ {int func; int base; int top; } ;


 int CallInfo ;
 int TValue ;
 void* luaM_newvector (TYPE_2__*,int,int ) ;
 int setnilvalue (int ) ;

__attribute__((used)) static void stack_init(lua_State*L1,lua_State*L){
L1->base_ci=luaM_newvector(L,8,CallInfo);
L1->ci=L1->base_ci;
L1->size_ci=8;
L1->end_ci=L1->base_ci+L1->size_ci-1;
L1->stack=luaM_newvector(L,(2*20)+5,TValue);
L1->stacksize=(2*20)+5;
L1->top=L1->stack;
L1->stack_last=L1->stack+(L1->stacksize-5)-1;
L1->ci->func=L1->top;
setnilvalue(L1->top++);
L1->base=L1->ci->base=L1->top;
L1->ci->top=L1->top+20;
}
