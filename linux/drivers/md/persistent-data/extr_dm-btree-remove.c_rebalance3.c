
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int dummy; } ;
struct child {int dummy; } ;
struct btree_node {int dummy; } ;


 int __rebalance3 (struct dm_btree_info*,struct btree_node*,struct child*,struct child*,struct child*) ;
 struct btree_node* dm_block_data (int ) ;
 int exit_child (struct dm_btree_info*,struct child*) ;
 int init_child (struct dm_btree_info*,struct dm_btree_value_type*,struct btree_node*,unsigned int,struct child*) ;
 int shadow_current (struct shadow_spine*) ;

__attribute__((used)) static int rebalance3(struct shadow_spine *s, struct dm_btree_info *info,
        struct dm_btree_value_type *vt, unsigned left_index)
{
 int r;
 struct btree_node *parent = dm_block_data(shadow_current(s));
 struct child left, center, right;




 r = init_child(info, vt, parent, left_index, &left);
 if (r)
  return r;

 r = init_child(info, vt, parent, left_index + 1, &center);
 if (r) {
  exit_child(info, &left);
  return r;
 }

 r = init_child(info, vt, parent, left_index + 2, &right);
 if (r) {
  exit_child(info, &left);
  exit_child(info, &center);
  return r;
 }

 __rebalance3(info, parent, &left, &center, &right);

 exit_child(info, &left);
 exit_child(info, &center);
 exit_child(info, &right);

 return 0;
}
