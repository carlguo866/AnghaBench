
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_steering {int dummy; } ;
struct mlx5_flow_namespace {int node; } ;
struct init_tree_node {int ar_size; int * children; } ;
struct fs_node {int dummy; } ;


 int fs_get_obj (struct mlx5_flow_namespace*,struct fs_node*) ;
 int init_root_tree_recursive (struct mlx5_flow_steering*,int *,int *,struct init_tree_node*,int) ;

__attribute__((used)) static int init_root_tree(struct mlx5_flow_steering *steering,
     struct init_tree_node *init_node,
     struct fs_node *fs_parent_node)
{
 int i;
 struct mlx5_flow_namespace *fs_ns;
 int err;

 fs_get_obj(fs_ns, fs_parent_node);
 for (i = 0; i < init_node->ar_size; i++) {
  err = init_root_tree_recursive(steering, &init_node->children[i],
            &fs_ns->node,
            init_node, i);
  if (err)
   return err;
 }
 return 0;
}
