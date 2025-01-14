
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {char* supply; } ;
struct device_node {int dummy; } ;


 int * of_find_property (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static bool of_regulator_bulk_available(struct device_node *np,
     struct regulator_bulk_data *supplies,
     unsigned int num_supplies)
{
 char property[32];
 unsigned int i;

 for (i = 0; i < num_supplies; i++) {
  snprintf(property, 32, "%s-supply", supplies[i].supply);

  if (of_find_property(np, property, ((void*)0)) == ((void*)0))
   return 0;
 }

 return 1;
}
