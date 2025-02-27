
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {void* nr_entries; void* max_entries; } ;
struct btree_node {TYPE_1__ header; } ;


 int BUG_ON (int) ;
 void* cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (void*) ;
 int node_copy (struct btree_node*,struct btree_node*,int) ;
 int node_shift (struct btree_node*,int) ;

__attribute__((used)) static void shift(struct btree_node *left, struct btree_node *right, int count)
{
 uint32_t nr_left = le32_to_cpu(left->header.nr_entries);
 uint32_t nr_right = le32_to_cpu(right->header.nr_entries);
 uint32_t max_entries = le32_to_cpu(left->header.max_entries);
 uint32_t r_max_entries = le32_to_cpu(right->header.max_entries);

 BUG_ON(max_entries != r_max_entries);
 BUG_ON(nr_left - count > max_entries);
 BUG_ON(nr_right + count > max_entries);

 if (!count)
  return;

 if (count > 0) {
  node_shift(right, count);
  node_copy(left, right, count);
 } else {
  node_copy(left, right, count);
  node_shift(right, count);
 }

 left->header.nr_entries = cpu_to_le32(nr_left - count);
 right->header.nr_entries = cpu_to_le32(nr_right + count);
}
