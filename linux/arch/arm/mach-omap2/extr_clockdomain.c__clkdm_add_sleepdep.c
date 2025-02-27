
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int name; int sleepdep_srcs; } ;
struct clkdm_dep {int sleepdep_usecount; } ;
struct TYPE_2__ {int (* clkdm_add_sleepdep ) (struct clockdomain*,struct clockdomain*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clkdm_dep*) ;
 int PTR_ERR (struct clkdm_dep*) ;
 struct clkdm_dep* _clkdm_deps_lookup (struct clockdomain*,int ) ;
 TYPE_1__* arch_clkdm ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct clockdomain*,struct clockdomain*) ;

__attribute__((used)) static int _clkdm_add_sleepdep(struct clockdomain *clkdm1,
          struct clockdomain *clkdm2)
{
 struct clkdm_dep *cd;
 int ret = 0;

 if (!clkdm1 || !clkdm2)
  return -EINVAL;

 cd = _clkdm_deps_lookup(clkdm2, clkdm1->sleepdep_srcs);
 if (IS_ERR(cd))
  ret = PTR_ERR(cd);

 if (!arch_clkdm || !arch_clkdm->clkdm_add_sleepdep)
  ret = -EINVAL;

 if (ret) {
  pr_debug("clockdomain: hardware cannot set/clear sleep dependency affecting %s from %s\n",
    clkdm1->name, clkdm2->name);
  return ret;
 }

 cd->sleepdep_usecount++;
 if (cd->sleepdep_usecount == 1) {
  pr_debug("clockdomain: will prevent %s from sleeping if %s is active\n",
    clkdm1->name, clkdm2->name);

  ret = arch_clkdm->clkdm_add_sleepdep(clkdm1, clkdm2);
 }

 return ret;
}
