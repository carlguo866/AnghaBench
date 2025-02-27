
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int value; } ;
struct device_node {int dummy; } ;
typedef int buf ;


 unsigned int mpic_msgr_number_of_blocks () ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_find_node_by_path (int ) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int mpic_msgr_block_number(struct device_node *node)
{
 struct device_node *aliases;
 unsigned int index, number_of_blocks;
 char buf[64];

 number_of_blocks = mpic_msgr_number_of_blocks();
 aliases = of_find_node_by_name(((void*)0), "aliases");
 if (!aliases)
  return -1;

 for (index = 0; index < number_of_blocks; ++index) {
  struct property *prop;

  snprintf(buf, sizeof(buf), "mpic-msgr-block%d", index);
  prop = of_find_property(aliases, buf, ((void*)0));
  if (node == of_find_node_by_path(prop->value))
   break;
 }

 return index == number_of_blocks ? -1 : index;
}
