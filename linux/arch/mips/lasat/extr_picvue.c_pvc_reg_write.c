
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * reg; } ;


 TYPE_1__* picvue ;

__attribute__((used)) static void pvc_reg_write(u32 val)
{
 *picvue->reg = val;
}
