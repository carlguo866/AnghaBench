
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varobj {TYPE_2__* root; } ;
struct TYPE_4__ {TYPE_1__* lang; } ;
struct TYPE_3__ {int (* number_of_children ) (struct varobj*) ;} ;


 int stub1 (struct varobj*) ;

__attribute__((used)) static int
number_of_children (struct varobj *var)
{
  return (*var->root->lang->number_of_children) (var);;
}
