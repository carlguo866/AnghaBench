
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_graph_get_remote_endpoint (struct device_node const*) ;

__attribute__((used)) static struct device_node *omapdss_of_get_remote_port(const struct device_node *node)
{
 struct device_node *np;

 np = of_graph_get_remote_endpoint(node);
 if (!np)
  return ((void*)0);

 np = of_get_next_parent(np);

 return np;
}
