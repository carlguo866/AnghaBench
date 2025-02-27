
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;


 struct rb_node* rb_parent (struct rb_node*) ;
 int rb_set_parent (struct rb_node*,struct rb_node*) ;

__attribute__((used)) static void __rb_rotate_right(struct rb_node *node, struct rb_root *root)
{
 struct rb_node *left = node->rb_left;
 struct rb_node *parent = rb_parent(node);

 if ((node->rb_left = left->rb_right))
  rb_set_parent(left->rb_right, node);
 left->rb_right = node;

 rb_set_parent(left, parent);

 if (parent)
 {
  if (node == parent->rb_right)
   parent->rb_right = left;
  else
   parent->rb_left = left;
 }
 else
  root->rb_node = left;
 rb_set_parent(node, left);
}
