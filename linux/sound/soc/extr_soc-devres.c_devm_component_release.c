
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int snd_soc_unregister_component (struct device*) ;

__attribute__((used)) static void devm_component_release(struct device *dev, void *res)
{
 snd_soc_unregister_component(*(struct device **)res);
}
