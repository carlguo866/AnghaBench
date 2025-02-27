
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct of_bus {unsigned int (* get_flags ) (int const*) ;int addresses; int (* count_cells ) (struct device_node*,int*,int*) ;} ;
struct device_node {int dummy; } ;


 int OF_CHECK_COUNTS (int,int) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int * of_get_property (struct device_node*,int ,int*) ;
 struct of_bus* of_match_bus (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_read_number (int const*,int) ;
 int stub1 (struct device_node*,int*,int*) ;
 unsigned int stub2 (int const*) ;

const u32 *of_get_address(struct device_node *dev, int index, u64 *size,
   unsigned int *flags)
{
 const u32 *prop;
 unsigned int psize;
 struct device_node *parent;
 struct of_bus *bus;
 int onesize, i, na, ns;


 parent = of_get_parent(dev);
 if (parent == ((void*)0))
  return ((void*)0);
 bus = of_match_bus(parent);
 bus->count_cells(dev, &na, &ns);
 of_node_put(parent);
 if (!OF_CHECK_COUNTS(na, ns))
  return ((void*)0);


 prop = of_get_property(dev, bus->addresses, (int *) &psize);
 if (prop == ((void*)0))
  return ((void*)0);
 psize /= 4;

 onesize = na + ns;
 for (i = 0; psize >= onesize; psize -= onesize, prop += onesize, i++)
  if (i == index) {
   if (size)
    *size = of_read_number(prop + na, ns);
   if (flags)
    *flags = bus->get_flags(prop);
   return prop;
  }
 return ((void*)0);
}
