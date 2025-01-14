
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int offset; int size; int bitnum; int nextbyte; struct node* parent; scalar_t__ index; scalar_t__ mark; scalar_t__ keymask; scalar_t__ keybits; void* rightnode; void* leftnode; int * right; int left; } ;


 void* NODE ;
 struct node* malloc (int) ;

__attribute__((used)) static struct node *alloc_node(struct node *parent)
{
 struct node *node;
 int bitnum;

 node = malloc(sizeof(*node));
 node->left = node->right = ((void*)0);
 node->parent = parent;
 node->leftnode = NODE;
 node->rightnode = NODE;
 node->keybits = 0;
 node->keymask = 0;
 node->mark = 0;
 node->index = 0;
 node->offset = -1;
 node->size = 4;

 if (node->parent) {
  bitnum = parent->bitnum;
  if ((bitnum & 7) == 0) {
   node->bitnum = bitnum + 7 + 8;
   node->nextbyte = 1;
  } else {
   node->bitnum = bitnum - 1;
   node->nextbyte = 0;
  }
 } else {
  node->bitnum = 7;
  node->nextbyte = 0;
 }

 return node;
}
