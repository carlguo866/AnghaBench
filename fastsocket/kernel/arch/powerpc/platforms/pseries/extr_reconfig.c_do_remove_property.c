
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 char* parse_node (char*,size_t,struct device_node**) ;
 int prom_remove_property (struct device_node*,struct property*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int do_remove_property(char *buf, size_t bufsize)
{
 struct device_node *np;
 char *tmp;
 struct property *prop;
 buf = parse_node(buf, bufsize, &np);

 if (!np)
  return -ENODEV;

 tmp = strchr(buf,' ');
 if (tmp)
  *tmp = '\0';

 if (strlen(buf) == 0)
  return -EINVAL;

 prop = of_find_property(np, buf, ((void*)0));

 return prom_remove_property(np, prop);
}
