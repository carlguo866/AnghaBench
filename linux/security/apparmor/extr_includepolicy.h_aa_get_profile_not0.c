
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct aa_profile {TYPE_1__ label; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

__attribute__((used)) static inline struct aa_profile *aa_get_profile_not0(struct aa_profile *p)
{
 if (p && kref_get_unless_zero(&p->label.count))
  return p;

 return ((void*)0);
}
