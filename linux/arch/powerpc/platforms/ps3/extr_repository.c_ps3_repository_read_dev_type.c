
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum ps3_dev_type { ____Placeholder_ps3_dev_type } ps3_dev_type ;


 int PS3_LPAR_ID_PME ;
 int make_field (char*,unsigned int) ;
 int make_first_field (char*,unsigned int) ;
 int read_node (int ,int ,int ,int ,int ,int*,int *) ;

int ps3_repository_read_dev_type(unsigned int bus_index,
 unsigned int dev_index, enum ps3_dev_type *dev_type)
{
 int result;
 u64 v1 = 0;

 result = read_node(PS3_LPAR_ID_PME,
  make_first_field("bus", bus_index),
  make_field("dev", dev_index),
  make_field("type", 0),
  0,
  &v1, ((void*)0));
 *dev_type = v1;
 return result;
}
