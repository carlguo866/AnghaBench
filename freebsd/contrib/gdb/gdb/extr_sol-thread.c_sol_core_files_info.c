
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {int (* to_files_info ) (struct target_ops*) ;} ;


 TYPE_1__ orig_core_ops ;
 int stub1 (struct target_ops*) ;

__attribute__((used)) static void
sol_core_files_info (struct target_ops *t)
{
  orig_core_ops.to_files_info (t);
}
