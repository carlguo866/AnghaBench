
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ep_func {int name; int func_deps; } ;
struct TYPE_4__ {TYPE_1__* cur_token; } ;
struct effect_parser {TYPE_2__ cfp; } ;
struct TYPE_3__ {int str; } ;


 int da_push_back (int ,int *) ;
 struct ep_func* ep_getfunc_strref (struct effect_parser*,int *) ;

__attribute__((used)) static inline bool ep_process_func_dep(struct effect_parser *ep,
           struct ep_func *func)
{
 struct ep_func *val = ep_getfunc_strref(ep, &ep->cfp.cur_token->str);
 if (val)
  da_push_back(func->func_deps, &val->name);
 return val != ((void*)0);
}
