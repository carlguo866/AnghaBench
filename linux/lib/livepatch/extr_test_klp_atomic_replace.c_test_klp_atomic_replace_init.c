
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int replace; } ;


 int klp_enable_patch (TYPE_1__*) ;
 TYPE_1__ patch ;
 int replace ;

__attribute__((used)) static int test_klp_atomic_replace_init(void)
{
 patch.replace = replace;
 return klp_enable_patch(&patch);
}
