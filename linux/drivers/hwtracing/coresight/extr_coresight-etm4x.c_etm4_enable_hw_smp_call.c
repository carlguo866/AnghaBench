
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm4_enable_arg {int drvdata; int rc; } ;


 scalar_t__ WARN_ON (int) ;
 int etm4_enable_hw (int ) ;

__attribute__((used)) static void etm4_enable_hw_smp_call(void *info)
{
 struct etm4_enable_arg *arg = info;

 if (WARN_ON(!arg))
  return;
 arg->rc = etm4_enable_hw(arg->drvdata);
}
