
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ asz; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;


 scalar_t__ mode_64b (struct pt_ild const*) ;
 int ptem_32bit ;
 int ptem_64bit ;
 int pti_get_nominal_easz_non64 (struct pt_ild const*) ;

__attribute__((used)) static inline enum pt_exec_mode
pti_get_nominal_easz(const struct pt_ild *ild)
{
 if (mode_64b(ild)) {
  if (ild->u.s.asz)
   return ptem_32bit;
  return ptem_64bit;
 }
 return pti_get_nominal_easz_non64(ild);
}
