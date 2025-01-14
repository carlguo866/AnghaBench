
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_mem_node {scalar_t__ color; struct ibv_mem_node* parent; struct ibv_mem_node* left; struct ibv_mem_node* right; } ;
struct TYPE_2__ {void* color; } ;


 void* IBV_BLACK ;
 scalar_t__ IBV_RED ;
 int __mm_rotate_left (struct ibv_mem_node*) ;
 int __mm_rotate_right (struct ibv_mem_node*) ;
 TYPE_1__* mm_root ;

__attribute__((used)) static void __mm_add_rebalance(struct ibv_mem_node *node)
{
 struct ibv_mem_node *parent, *gp, *uncle;

 while (node->parent && node->parent->color == IBV_RED) {
  parent = node->parent;
  gp = node->parent->parent;

  if (parent == gp->left) {
   uncle = gp->right;

   if (uncle && uncle->color == IBV_RED) {
    parent->color = IBV_BLACK;
    uncle->color = IBV_BLACK;
    gp->color = IBV_RED;

    node = gp;
   } else {
    if (node == parent->right) {
     __mm_rotate_left(parent);
     node = parent;
     parent = node->parent;
    }

    parent->color = IBV_BLACK;
    gp->color = IBV_RED;

    __mm_rotate_right(gp);
   }
  } else {
   uncle = gp->left;

   if (uncle && uncle->color == IBV_RED) {
    parent->color = IBV_BLACK;
    uncle->color = IBV_BLACK;
    gp->color = IBV_RED;

    node = gp;
   } else {
    if (node == parent->left) {
     __mm_rotate_right(parent);
     node = parent;
     parent = node->parent;
    }

    parent->color = IBV_BLACK;
    gp->color = IBV_RED;

    __mm_rotate_left(gp);
   }
  }
 }

 mm_root->color = IBV_BLACK;
}
